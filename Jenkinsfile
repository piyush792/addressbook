pipeline {
    agent any
    tools{
        jdk 'myjava'
        maven 'mymaven'
    }
    stages {
        stage('Compile') {
            agent {label 'linux_slave1'}
            steps {
                script{
                    echo 'compiling the code'
                    sh 'mvn compile'
                }
            }
        }
        stage('UnitTest') {
            agent any
            steps {
                script{
                    echo 'run the unit test cases'
                    sh 'mvn test'
                }
            }
            post{
                always{
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Package') {
            agent any
            steps {
                script{
                    echo 'package the code'
                    sh 'mvn package'
                }
            }
        }
    }
}
