pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello, world!'
            }
        }

        stage('Print Message') {
            steps {
                echo 'This is a Jenkins pipeline script'
            }
        }
    }

    post {
        always {
            echo 'This will always execute'
        }
        success {
            echo 'This will execute only if the pipeline succeeds'
        }
        failure {
            echo 'This will execute only if the pipeline fails'
        }
    }
}
