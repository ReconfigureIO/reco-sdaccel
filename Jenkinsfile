properties([buildDiscarder(logRotator(daysToKeepStr: '', numToKeepStr: '20'))])

notifyStarted()

node ("docker && vivado-2015.4") {
    try {
        stage "checkout"
        checkout scm

        stage 'build image'
        sh 'docker build -t "verilator:latest" .'

        stage 'lint'
        sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck reco-sdaccel'
        sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck jarvice/jarvice'

        sh 'docker run --rm -i -v $(pwd):/mnt verilator --lint-only -Wall go-teak/sdaccel/stubs/*.v go-teak/sdaccel/verilog/*.v --top-module sda_kernel_wrapper_nomem --report-unoptflat'

        stage 'test'
        withEnv(['XILINX_VIVADO=/opt/xilinx/Vivado/2015.4',
                 'XILINXD_LICENSE_FILE=2100@jenkins.nerabus-infra.com',
                 'PATH=/opt/xilinx/Vivado/2015.4/bin:$PATH']) {
            sh './reco-sdaccel build go-teak/sdaccel/stubs/sda_kernel_action_stub_nomem.v'
        }

        stage 'build'
        sh 'make'

        stage 'upload'
        step([$class: 'S3BucketPublisher', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'nerabus/reco-sdaccel', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: true, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: "dist/*.tar.gz", storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], profileName: 's3', userMetadata: []])

        stage 'clean'
        sh 'make clean'

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