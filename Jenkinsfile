def SDACCEL_WRAPPER_VERSION = ''

pipeline {
    agent { label "master" }
    parameters {
        string(name: 'SDACCEL_WRAPPER_VERSION', defaultValue: '')
        booleanParam(name: 'UPLOAD', defaultValue: true, description: 'Upload this after building')
        booleanParam(name: 'SIMULATE', defaultValue: false, description: 'Force a simulation')
        booleanParam(name: 'DEPLOY', defaultValue: false, description: 'Force a deploy for testing')
    }
    environment {
        VERSION = "${env.BRANCH_NAME}"
    }
    options {
        buildDiscarder(logRotator(daysToKeepStr: '', numToKeepStr: '20'))
        disableConcurrentBuilds()
    }
    post {
        failure {
            slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }
        success {
            slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
        }
    }
    stages {
        stage("notify") {
            steps {
                slackSend (color: '#FFFF00', message: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
            }
        }

        stage('config') {
            steps {
                script {
                    if(params.SDACCEL_WRAPPER_VERSION == ''){
                        SDACCEL_WRAPPER_VERSION = sh (returnStdout: true, script: 'make print-SDACCEL_WRAPPER_VERSION').trim()
                    }else{
                        SDACCEL_WRAPPER_VERSION = params.SDACCEL_WRAPPER_VERSION
                    }
                    echo "${SDACCEL_WRAPPER_VERSION}"
                }
            }
        }

        stage('install') {
            steps {
                sh 'docker-compose build'
            }
        }

        stage('pre clean') {
            steps {
                sh 'git clean -fdx'
                sh 'docker-compose run --rm test make clean'
            }
        }

        stage('lint') {
            steps {
                sh 'docker-compose run --rm test make lint'
            }
        }

        stage('build dist images') {
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${SDACCEL_WRAPPER_VERSION} docker-image"
            }
        }

        stage('test go') {
            steps {
                sh "docker-compose run --rm test make test"
            }
        }

        stage('deploy examples') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] || params.SIMULATE || params.DEPLOY}
            }
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION} aws"
            }
        }

        stage('test simulation') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] || params.SIMULATE }
            }
            steps {
                parallel "histogram array": {
                    dir('examples/histogram-array'){
                        sh '../../reco-aws/reco-aws test test-histogram'
                    }
                },
                "smi single access": {
                    dir('examples/smi-single-access'){
                        sh '../../reco-aws/reco-aws test smi-single-access-test'
                    }
                },
                "smi burst access": {
                    dir('examples/smi-burst-access'){
                        sh '../../reco-aws/reco-aws test smi-burst-access-test'
                    }
                }
            }
        }


        stage('test hw builds') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] && !params.TEST_AFI}
            }
            steps {
                parallel "histogram array": {
                    sh './ci/test_afi_generation.sh histogram-array test-histogram histogram "`git rev-parse HEAD`"'
                },
                "memory benchmark": {
                    sh './ci/test_afi_generation.sh memory-benchmark test-memory-benchmark memory-benchmark "`git rev-parse HEAD`"'
                },
                memcopy: {
                    sh './ci/test_build.sh memcopy test-memcopy memcopy "`git rev-parse HEAD`"'
                },
                regression: {
                    sh './ci/test_build.sh regression test-regression regression "`git rev-parse HEAD`"'
                },
                "parallel histogram": {
                    sh './ci/test_build.sh histogram-parallel test-histogram histogram "`git rev-parse HEAD`"'
                }
            }
        }

        stage('show benchmarks'){
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] }
            }
            steps {
                sh 'cat bench_tmp/* | ./benchmarks/log2csv -'
            }
        }

        stage('build') {
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION}"
            }
        }

        stage('upload') {
            when {
                expression { env.BRANCH_NAME in ["master"] && env.UPLOAD}
            }
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION} upload"
                sh './ci/upload_benchmarks.sh'
                build job: 'reco-sdaccel-publish-benchmarks', wait: false
            }
        }

        stage('clean') {
            steps {
                sh 'make clean'
                sh 'rm -rf bench_tmp'
            }
        }
    }
}
