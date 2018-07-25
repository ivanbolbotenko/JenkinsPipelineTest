node('master') {
    stage('Checkout') {
        checkout scm
    }
    stage('Dockerfile Check') {
        sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
    }
    stage('Build Image') {
        def dockerImage = docker.build("test:${env.BUILD_ID}")
    }
    stage('Test Application') {
        def dockerImage = docker.image("test:${env.BUILD_ID}")
        dockerImage.inside {
            sh 'pip list --outdated'
            sh 'pip install -r /validator.txt'
            sh 'pylint /project'
        }
    }
    stage('Code Coverage') {
        def dockerImage = docker.image("test:${env.BUILD_ID}")
        dockerImage.inside {
            sh 'pip install -r /validator.txt'
            sh 'py.test --cov=app tests'
        }
    }
}