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
                    sshagent(['ssh-key']){
                    echo 'package the code'
                    sh "ssh -o StrictHostKeyChecking=no 'bash mvn package'"
                    }
                }
            }
        }
    }
}
