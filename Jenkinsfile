pipeline {
    agent any
    stages {
        stage ('Initial') {
            steps {
                echo 'Iniciando a Pipeline'
            }
        }

        stage ('Build Image') {
            steps {
                script {
                    dockerapp = docker.build("test-app-flask:${env.BUILD_ID}", '-f Dockerfile .')
                }
                echo 'Should Build now'
            }
        }

        stage ('Push Image') {
            steps {
                script {
                    docker.withRegistry('787909459977.dkr.ecr.sa-east-1.amazonaws.com', 'ecr:test-app-flask:my.aws.credentials'){
                        dockerapp.push('latest')
                        dockerapp.push("${env.BUILD_ID}")
                    }
                }
            }
        }
    }
}