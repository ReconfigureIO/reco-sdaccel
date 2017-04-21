pipeline {
    agent { label "master" }
    parameters {
        string(name: 'SDACCEL_WRAPPER_VERSION', defaultValue: 'v0.9.0')
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

        stage('build image') {
            steps {
                sh 'docker build -t "verilator:latest" docker-verilator'
            }
        }

        stage('lint') {
            steps {
                sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck sdaccel-builder'
                sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck reco-jarvice/reco-jarvice'
                sh 'docker run --rm -i -v $(pwd):/mnt verilator --lint-only -Wall go-teak/src/sdaccel/stubs/*.v go-teak/src/sdaccel/verilog/*.v --top-module sda_kernel_wrapper_gmem --report-unoptflat'
            }
        }

        stage('pre clean') {
            steps {
                sh 'make clean'
                sh 'rm -rf bench_tmp'
            }
        }

        stage('test go') {
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${params.SDACCEL_WRAPPER_VERSION} eTeak/go-teak-sdaccel"
                dir('examples/noop'){
                    sh './../../sdaccel-builder test-go'
                    sh 'docker run --rm -i -v $(pwd):/mnt verilator -Wall --lint-only -I".reco-work/sdaccel/verilog/includes" .reco-work/sdaccel/verilog/main.v --top-module sda_kernel_wrapper_gmem --report-unoptflat'
                }
            }
        }

        stage('deploy examples') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] }
            }
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${params.SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION} deploy"
            }
        }

        stage('test simulation') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] }
            }
            steps {
                parallel histogram: {
                    dir('examples/histogram'){
                        sh '../../reco-jarvice/reco-jarvice test test-histogram'
                    }
                },
//                addition: {
//                    dir('examples/addition'){
//                        sh '../../reco-jarvice/reco-jarvice test test-addition'
//                    }
//                },
                memcopy: {
                    dir('examples/memcopy'){
                        sh '../../reco-jarvice/reco-jarvice test test-memcopy'
                    }
                },
                "parallel histogram": {
                    dir('examples/histogram-parallel'){
                        sh '../../reco-jarvice/reco-jarvice test test-histogram'
                    }
                }
            }
        }


        stage('test hw builds') {
            when {
                expression { env.BRANCH_NAME in ["master", "auto", "rollup", "try"] }
            }
            steps {
                parallel histogram: {
                    dir('examples/histogram') {
                        sh 'NUMBER=$(../../reco-jarvice/reco-jarvice build) && ../../reco-jarvice/reco-jarvice run $NUMBER test-histogram && ../../ci/run-benchmark.sh $NUMBER histogram "`git rev-parse HEAD`"'
                    }
                },
//                addition: {
//                    dir('examples/addition'){
//                        sh 'NUMBER=$(../../reco-jarvice/reco-jarvice build) && ../../reco-jarvice/reco-jarvice run $NUMBER test-addition'
//                    }
//                },
                memcopy: {
                    dir('examples/memcopy'){
                        sh 'NUMBER=$(../../reco-jarvice/reco-jarvice build) && ../../reco-jarvice/reco-jarvice run $NUMBER test-memcopy && ../../ci/run-benchmark.sh $NUMBER memcopy "`git rev-parse HEAD`"'
                    }
                },
                "parallel histogram": {
                    dir('examples/histogram-parallel') {
                        sh 'NUMBER=$(../../reco-jarvice/reco-jarvice build) && ../../reco-jarvice/reco-jarvice run $NUMBER test-histogram && ../../ci/run-benchmark.sh $NUMBER histogram "`git rev-parse HEAD`"'
                    }
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
                sh "make SDACCEL_WRAPPER_VERSION=${params.SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION}"
            }
        }

        stage('upload') {
            when {
                expression { env.BRANCH_NAME in ["master"] && env.UPLOAD}
            }
            steps {
                sh "make SDACCEL_WRAPPER_VERSION=${params.SDACCEL_WRAPPER_VERSION} VERSION=${env.VERSION} upload"
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
