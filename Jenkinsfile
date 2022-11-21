pipeline {
    agent any
    parameters{
        string(name: 'ENV', defaultValue: 'Prod', description: 'env to deploy')
        booleanParam(name: 'EcecuteTests', defaultValue: true, description: 'decide to run tc')
        choice(name: 'APPVERSION', choices: ['1.1', '1.2','1.3','1.4'])
    } 

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
                    echo "Deploy to env: ${params.ENV}"
                    echo "Deploy the APP Version: ${params.APPVERSION}"
                }
            }
        }
    }
}
