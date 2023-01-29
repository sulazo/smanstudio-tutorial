pipeline {
    agent any
    tools {
        terraform 'terraform'
    }

    stages {
        stage('Fetch') {
            steps {
                git branch: 'main', url: 'https://github.com/sulazo/smanstudio-tutorial.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
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
                // echo 'tf plan'

                sh 'terraform apply --auto-approve'
            }
        }
    }
}
