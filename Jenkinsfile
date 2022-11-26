pipeline {
    agent any
    tools{
        jdk 'myjava'
        maven 'mymaven'
    }
    environment{
        BUILD_SERVER_IP='ec2-user@3.111.245.103'
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
                    sh "scp -o StrictHostKeyChecking=no server-script.sh ${BUILD_SERVER_IP}:/home/ec2-user"
                    sh "ssh -o StrictHostKeyChecking=no ${BUILD_SERVER_IP} 'bash ~/server-script.sh'"
                    }
                }
            }
        }
    }
}
