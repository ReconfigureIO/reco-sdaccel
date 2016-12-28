properties([buildDiscarder(logRotator(daysToKeepStr: '', numToKeepStr: '20'))])

notifyStarted()

node ("docker") {
    try {
        stage "checkout"
        checkout scm

        stage 'lint'
        sh 'docker run --rm -i -v $(pwd):/mnt nlknguyen/alpine-shellcheck reco-sdaccel'

        stage 'build'
        sh 'make package'

        stage 'upload'
        step([$class: 'S3BucketPublisher', dontWaitForConcurrentBuildCompletion: false, entries: [[bucket: 'nerabus/reco-sdaccel', excludedFile: '', flatten: false, gzipFiles: false, keepForever: false, managedArtifacts: false, noUploadOnFailure: true, selectedRegion: 'us-east-1', showDirectlyInBrowser: false, sourceFile: "reco-snap-${env.BRANCH_NAME}.tar.gz", storageClass: 'STANDARD', uploadFromSlave: false, useServerSideEncryption: false]], profileName: 's3', userMetadata: []])

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