pipeline {
    agent any
    environment {
        IMAGE_NAME = 'mi-aplicacion'
        DOCKER_HUB_USER = 'orteg44'  
    }
    stages {
        stage('Clonar Código') {
            steps {
                git branch: 'main', url: 'https://github.com/JoseAntonioOrtega04/mi-app-jenkins.git'
            }
        }
        stage('Construir Imagen Docker') {
            steps {
                sh 'docker build -t $DOCKER_HUB_USER/$IMAGE_NAME .'
            }
        }
        stage('Subir a Docker Hub') {
            steps {
                withDockerRegistry([credentialsId: 'docker-hub-cred', url: '']) {
                    sh 'docker push $DOCKER_HUB_USER/$IMAGE_NAME'
                }
            }
        }
        stage('Desplegar Contenedor') {
            steps {
                sh 'docker stop $IMAGE_NAME || true'
                sh 'docker rm $IMAGE_NAME || true'
                sh 'docker run -d --name $IMAGE_NAME -p 80:80 $DOCKER_HUB_USER/$IMAGE_NAME'
            }
        }
    }
}

