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
        
        stage('Git-Intigreation') {
         steps {
             script {
                    properties([pipelineTriggers([pollSCM('* * * * *')])])
                }
            git 'https://github.com/knpatel5900/Maven-Demo.git'
            echo 'Compiled Succesfully'
         }
      }
        stage('terraform init') {
            steps {
                sh ' sudo terraform init ./jenkins'
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
