pipeline {
    agent any

    tools (nodejs "node")
    stages {
        stage('build') {
            steps {
                echo 'building'
                nodejs(nodeJSInstallationName: 'Node 6.x', configId: 'e2c5c70d-bcdc-4609-a49a-678bb2b48c52') {
                    sh 'npm config ls'
                }
    
            }
        }
        stage('test') {
            steps {
                echo 'testing'
                sh 'npm test'
            }
        }
    }
}
