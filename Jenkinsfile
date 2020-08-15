pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh ' rm -r *;sudo https://github.com/knpatel5900/jenkins-terraform.git'
            }
        }
        stage('terraform init') {
            steps {
                sh ' /root/terraform/demo-4~vpc_Creation/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /root/terraform/demo-4~vpc_Creation/terraform plan ./jenkins'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
