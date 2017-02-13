pipeline {
    agent { label "master" }
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
            }
        }

        stage('test go') {
            steps {
                sh 'make eTeak/go-teak-sdaccel'
                dir('examples/noop'){
                    sh './../../sdaccel-builder test-go'
                    sh 'docker run --rm -i -v $(pwd):/mnt verilator -Wall --lint-only -I".reco-work/sdaccel/verilog/includes" .reco-work/sdaccel/verilog/main.v --top-module sda_kernel_wrapper_gmem --report-unoptflat'
                }
            }
        }

        stage('deploy examples') {
            steps {
                sh "make VERSION=${env.VERSION} deploy"
            }
        }

        stage('test simulation') {
            steps {
                parallel addition: {
                    dir('examples/addition'){
                        sh '../../reco-jarvice/reco-jarvice test test-addition'
                    }
                },
                histogram: {
                    dir('examples/histogram'){
                        sh '../../reco-jarvice/reco-jarvice test test-histogram'
                    }
                },
                memcopy: {
                    dir('examples/memcopy'){
                        sh '../../reco-jarvice/reco-jarvice test test-memcopy'
                    }
                }
            }
        }


        stage('test hw builds') {
            when {
                expression { env.BRANCH_NAME == "PR-43" }
            }
            steps {
                parallel addition: {
                    dir('examples/addition'){
                        sh 'NUMBER=$(../../reco-jarvice/reco-jarvice build) && ../../reco-jarvice/reco-jarvice run $NUMBER test-addition'
                    }
                },
                histogram: {
                    dir('examples/histogram'){
                        sh 'NUMBER=$(../../reco-jarvice/reco-jarvice build) && ../../reco-jarvice/reco-jarvice run $NUMBER test-histogram'
                    }
                },
                memcopy: {
                    dir('examples/memcopy'){
                        sh 'NUMBER=$(../../reco-jarvice/reco-jarvice build) && ../../reco-jarvice/reco-jarvice run $NUMBER test-memcopy'
                    }
                }
            }
        }

        stage('build') {
            steps {
                sh 'make'
            }
        }

        stage('upload') {
            steps {
                step([$class: 'S3BucketPublisher', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'nerabus/sdaccel-builder', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: true, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: "dist/*.tar.gz", storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], profileName: 's3', userMetadata: []])
            }
        }

        stage('clean') {
            steps {
                sh 'make clean'
            }
        }
    }
}
