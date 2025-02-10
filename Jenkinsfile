pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/githubcodingjoiner/cpp_code.git'
            }
        }
        stage('Build') {
            steps {
                // Building the program using the Makefile
                bat 'make'
            }
        }
        stage('Run Program') {
            steps {
                // Running the compiled program
                bat 'make run'
            }
        }
    }
    post {
        always {
            // Clean up workspace after the build
            bat 'make clean'
        }
    }
}
