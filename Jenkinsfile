def SDACCEL_WRAPPER_VERSION = ''

pipeline {
    agent { label "master" }
    parameters {
        string(name: 'SDACCEL_WRAPPER_VERSION', defaultValue: '')
        booleanParam(name: 'UPLOAD', defaultValue: true, description: 'Upload this after building')
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

        stage('pre clean') {
            steps {
                sh 'git clean -fdx'
                sh 'make clean'
            }
        }

        stage('build verilator image') {
            steps {
                sh 'docker build -t "verilator:latest" docker-verilator'
            }
        }

        stage('lint') {
            steps {
                sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck sdaccel-builder'
                sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck reco-jarvice/reco-jarvice'
                sh 'docker run --rm -i -v $(pwd):/mnt verilator --lint-only -Wall -Wno-DECLFILENAME go-teak/src/smi/verilog/*.v go-teak/src/sdaccel/stubs/*.v go-teak/src/sdaccel/verilog/*.v --top-module sda_kernel_wrapper_gmem --report-unoptflat'
                sh 'docker run --rm -i -v $(pwd):/mnt verilator --lint-only -Wall -Wno-DECLFILENAME go-teak/src/axi/verilog/*.v go-teak/src/sdaccel/stubs/*.v go-teak/src/sdaccel/verilog/*.v --top-module sda_kernel_wrapper_gmem --report-unoptflat'
            }
        }

        stage('build dist images') {
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${SDACCEL_WRAPPER_VERSION} docker-image"
            }
        }

        stage('test go') {
            steps {
                sh "make test"
            }
        }

        stage('deploy examples') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] }
            }
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION} aws"
            }
        }

        stage('test simulation') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] }
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
                "noop": {
                    dir('examples/noop'){
                        sh '../../reco-aws/reco-aws test test-noop'
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
                memcopy: {
                    sh './ci/test_afi_generation.sh memcopy test-memcopy memcopy "`git rev-parse HEAD`"'
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
