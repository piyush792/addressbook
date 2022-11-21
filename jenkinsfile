pipeline {
    agent any

    stages {
        stage('Compile') {
            steps {
                script{
                    echo 'compiling the code'
                }
            }
        }
        stage('UnitTest') {
            steps {
                script{
                    echo 'run the unit test cases'
                }
            }
        }
        stage('Package') {
            steps {
                script{
                    echo 'package the code'
                }
            }
        }
    }
}
