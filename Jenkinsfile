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
                    dockerapp = docker.build('app-flask', '-f Dockerfile .') {

                    }
                }
                echo 'Should Build now'
            }
        }
    }
}