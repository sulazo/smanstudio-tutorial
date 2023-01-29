pipeline {
    agent any

    stages {
        stage('Fetch') {
            steps {
                 git branch: 'main', url: 'https://github.com/sulazo/temp.git'
            }
        }

        stage('Terraform Init') {
            steps {
                echo 'pushing'
                sh 'terraform init'
 
            }
        }
        stage('Terraform Plan') {
            steps {
                
                sh 'terraform plan'
            }
        }


        // stage('Approval') {
        //     steps {
        //        script {
        //           emailext body: "Please review and approve the build for deployment",
        //           subject: "Build Approval Request",
        //           to: "approver@example.com"
        //         }
        //         input message: "Are you sure you want to deploy to production?", ok: "Deploy"


        //     }
        // }

        stage('Terraform apply ') {
            steps {
                
                sh 'terraform apply -auto-approve'
            }
        }
    }
}










