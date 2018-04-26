def SDACCEL_WRAPPER_VERSION = ''

pipeline {
    agent { label "master" }
    parameters {
        string(name: 'SDACCEL_WRAPPER_VERSION', defaultValue: '')
        booleanParam(name: 'FORCE_HARDWARE_TEST', defaultValue: false, description: 'Force this to build hardware if on master.')
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
                expression { env.BRANCH_NAME in ["auto", "rollup", "try"] || params.SIMULATE || params.DEPLOY || params.FORCE_HARDWARE_TEST}
            }
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION} aws"
            }
        }

        stage('test simulation') {
            when {
                expression { env.BRANCH_NAME in ["auto", "rollup", "try"] || params.SIMULATE || params.FORCE_HARDWARE_TEST }
            }
            steps {
                parallel "histogram array": {
                    dir('examples/histogram-array'){
                        sh '../../reco-aws/reco-aws test test-histogram'
                    }
                },
                addition: {
                    dir('examples/addition'){
                        sh '../../reco-aws/reco-aws test test-addition'
                    }
                },
                memcopy: {
                    dir('examples/memcopy'){
                        sh '../../reco-aws/reco-aws test test-memcopy'
                    }
                },
                regression: {
                    dir('examples/regression'){
                        sh '../../reco-aws/reco-aws test test-regression'
                    }
                },
                popcount: {
                    dir('examples/popcount'){
                        sh '../../reco-aws/reco-aws test test-popcount'
                    }
                },
                "parallel histogram": {
                    dir('examples/histogram-parallel'){
                        sh '../../reco-aws/reco-aws test test-histogram'
                    }
                },
                "md5": {
                    dir('examples/md5'){
                        sh '../../reco-aws/reco-aws test test-md5'
                    }
                },
                "memory benchmark": {
                    dir('examples/memory-benchmark'){
                        sh '../../reco-aws/reco-aws test test-memory-benchmark'
                    }
                },
                "noop": {
                    dir('examples/noop'){
                        sh '../../reco-aws/reco-aws test test-noop'
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
                expression { (env.BRANCH_NAME in ["auto", "rollup", "try"]  || params.FORCE_HARDWARE_TEST) && !params.TEST_AFI}
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

        // We'll upload from auto, which if merged, will have the same SHA as master
        stage('show benchmarks'){
            when {
                expression { env.BRANCH_NAME in ["auto", "rollup", "try"] }
            }
            steps {
                sh 'cat bench_tmp/* | ./benchmarks/log2csv -'
                sh './ci/upload_benchmarks.sh'
            }
        }

        // We'll only publish benchmarks from master
        stage('trigger benchmarks job'){
            when {
                expression { env.BRANCH_NAME in ["master"] }
            }
            steps {
                build job: 'reco-sdaccel-publish-benchmarks', wait: false
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
            }
        }

        stage('clean') {
            steps {
                sh 'make clean'
            }
        }
    }
}
