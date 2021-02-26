pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo "$GIT_BRANCH"
            }
        }
         stage('Docker build') {
            steps {
                sh "docker build -t hello-k8s ."
            }
        }

    }
}
