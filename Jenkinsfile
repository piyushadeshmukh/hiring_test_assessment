pipeline {
    agent any

    stages {
        stage('Run Questionnaire Tests') {
            steps {
                sh 'chmod +x run.sh'
                sh './run.sh'
            }
        }
    }
}
