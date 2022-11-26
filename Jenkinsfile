pipeline {
    agent any
    parameters{
        string(name: 'ENV', defaultValue: 'Prod', description: 'env to deploy')
        booleanParam(name: 'executeTests', defaultValue: true, description: 'decide to run tc')
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
            input{
                message "Select the version to run TC"
                ok "version selected"
                parameters{
                    choice(name: 'VERSION', choices: ['1','2','3','4'])
                }
            }
            when {
                expression{
                    params.executeTests == true
                }
            }
            steps {
                script{
                    echo 'run the unit test cases'
                }
            }
        }
        stage('Package') {
            when {
                expression{
                    BRANCH_NAME == 'dev' || BRANCH_NAME == 'master'
                }
            }
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
