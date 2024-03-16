pipeline {
    agent any
    tools {
        maven "maven"
    }
    stages {
        stage ('git clone') {
            steps {
                git 'https://github.com/sameergi/Aaptatt-hiring-assignment.git'
            }
        }
        stage ('build') {
            steps {
                sh 'mvn clean package'
            }
        } 
        stage ('Docker Version') {
            steps {
                sh 'docker version'
            }
        }
        stage ('build docker image and push') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker') {
                        sh 'docker build -t sameerdock/sam1 .'
                        sh 'docker push sameerdock/sam1'
                    }
                }
            }
        }
        stage ('build docker container') {
            steps {
                sh 'docker run -dt --name con2 -p 8222:8080 sameerdock/sam1'
            }
        }
    }
}

