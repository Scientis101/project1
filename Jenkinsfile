pipeline {
    agent any

    stages {
        stage('gitClone') {
            steps {
                git branch: 'main', credentialsId: 'Gitcred', url: 'https://github.com/Scientis101/project1.git'
            }
        }
        stage('BuildImage') {
            steps {
                script {
                    sh 'docker build -t terraapp -f Dockerfile .'
                }
            }
        }
        stage('Login to Docker Hub') {
            steps {
                script {
                    // Correcting the syntax of withCredentials and the Docker login command
                    withCredentials([usernamePassword(credentialsId: 'dockerhub', passwordVariable: 'passwd', usernameVariable: 'fejiroeriksson')]) {
                        sh 'docker login -u $fejiroeriksson -p $passwd'
                    }
                }
            }
        }
        stage('Push Image') {
            steps {
                script {
                    // Correcting the image tagging and pushing command
                    sh 'docker tag terraapp fejiroeriksson/terraapp'
                    sh 'docker push fejiroeriksson/terraapp'
                }
            }
        }
    } // Closing brace for the 'stages' block
} // Closing brace for the 'pipeline' block
