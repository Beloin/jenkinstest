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
                    dockerapp = docker.build("app-flask:${env.BUILD_ID}", '-f Dockerfile .')
                }
                echo 'Should Build now'
            }
        }

        // stage ('Push Image') {
        //     steps {
        //         script {
        //             docker.withRegistry('')
        //         }
        //     }
        // }
    }
}