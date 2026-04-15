pipeline {
    agent any

    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select Environment')
    }

    environment {
        AWS_REGION = 'ap-south-1'
    }

    stages {

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh """
                terraform apply -auto-approve \
                -var-file=envs/${params.ENV}.tfvars \
                """
            }
        }
    }
}