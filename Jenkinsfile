pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'building'
                nodejs(nodeJSInstallationName: 'recent node', configId: 'e2c5c70d-bcdc-4609-a49a-678bb2b48c52') {
                    sh 'npm config ls'
                }
    
            }
        }
        stage('test') {
            steps {
                echo 'testing'
                nodejs(nodeJSInstallationName: 'recent test', configId: 'e2c5c70d-bcdc-4609-a49a-678bb2b48c52') {
                    sh 'npm config ls'
                }
            }
        }
    }
}
