pipeline {
    agent any
    stages {
        stage('Clonar Código') {
            steps {
                git branch: 'main', url: 'https://github.com/JoseAntonioOrtega04/mi-app-jenkins.git'
            }
        }
        stage('Ejecutar Script') {
            steps {
                sh 'echo "¡Jenkins está funcionando con GitHub/GitLab!"'
            }
        }
    }
}

