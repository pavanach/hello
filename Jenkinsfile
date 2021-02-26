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
                          echo "GIT_BRANCH=${env.GIT_BRANCH}" >> /etc/environment
                          echo "GIT_COMMIT=${env.GIT_COMMIT}" >> /etc/environment
                          """
            }
        }

    }
}
