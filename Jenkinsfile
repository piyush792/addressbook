pipeline {
    agent any
    tools{
        jdk 'myjava'
        maven 'mymaven'
    }
    stages {
        stage('Compile') {
            steps {
                script{
                    echo 'compiling the code'
                    sh 'mvn compile'
                }
            }
        }
        stage('UnitTest') {
            steps {
                script{
                    echo 'run the unit test cases'
                    sh 'mvn test'
                }
            }
        }
        stage('Package') {
            steps {
                script{
                    echo 'package the code'
                    sh 'mvn package'
                }
            }
        }
    }
}
