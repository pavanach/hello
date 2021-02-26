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
                sh """
                    cd /Users/pavan.achugatla/Documents/mnaut/scm/hello/
                    docker build -t hello-k8s .
                    """
            }
        }

    }
}
