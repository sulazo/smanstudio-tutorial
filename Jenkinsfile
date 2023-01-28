pipeline {
    agent any

    stages {
        stage('Fetch') {
            steps {
                 git branch: 'main', url: 'https://github.com/sulazo/temp.git'
            }
        }

        stage('Push') {
            steps {
                echo 'pushing'
            }
        }
    }
}










