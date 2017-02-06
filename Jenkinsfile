properties([buildDiscarder(logRotator(daysToKeepStr: '', numToKeepStr: '20'))])

notifyStarted()

node ("master") {
    try {
        stage "checkout" {
            checkout scm
        }

        stage 'build image' {
            sh 'docker build -t "verilator:latest" docker-verilator'
        }

        stage 'lint' {
            sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck reco-sdaccel'
            sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck jarvice/jarvice'
            sh 'docker run --rm -i -v $(pwd):/mnt verilator --lint-only -Wall go-teak/src/sdaccel/stubs/*.v go-teak/src/sdaccel/verilog/*.v --top-module sda_kernel_wrapper_gmem --report-unoptflat'
        }

        stage 'pre clean' {
            sh 'make clean'
        }

        stage 'test go' {
            sh 'make eTeak/go-teak-sdaccel'
            dir('examples/noop'){
                sh './../../reco-sdaccel test-go'
                sh 'docker run --rm -i -v $(pwd):/mnt verilator -Wall --lint-only -I".reco-work/sdaccel/verilog/includes" .reco-work/sdaccel/verilog/main.v --top-module sda_kernel_wrapper_gmem --report-unoptflat'
            }
        }

        withEnv(["VERSION=${env.BRANCH_NAME}"]) {
            stage 'deploy examples' {
                sh "make VERSION=${env.VERSION} deploy"
            }

            parallel noop: {
                dir('examples/noop'){
                    sh '../../jarvice/jarvice test test-noop'
                }
            },
            addition: {
                dir('examples/addition'){
                    sh '../../jarvice/jarvice test test-addition'
                }
            }

        }

//        stage 'test verilog histogram'
//        withEnv(["VERSION=${env.BRANCH_NAME}"]) {
//            dir('examples/histogram'){
//                sh '../../jarvice/jarvice test test-histogram'
//            }
//        }
//
//        stage 'test verilog histogram-parallel'
//        withEnv(["VERSION=${env.BRANCH_NAME}"]) {
//            dir('examples/histogram-parallel'){
//                sh '../../jarvice/jarvice test test-histogram-parallel'
//            }
//        }

        stage 'build' {
            sh 'make'
        }

        stage 'upload' {
            step([$class: 'S3BucketPublisher', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'nerabus/reco-sdaccel', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: true, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: "dist/*.tar.gz", storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], profileName: 's3', userMetadata: []])
        }

        stage 'clean' {
            sh 'make clean'
        }

        notifySuccessful()
    } catch (e) {
      currentBuild.result = "FAILED"
      notifyFailed()
      throw e
    }
}

def notifyStarted() {
    slackSend (color: '#FFFF00', message: "STARTED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
}

def notifySuccessful() {
    slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
}

def notifyFailed() {
  slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
}