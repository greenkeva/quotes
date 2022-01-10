pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                echo 'building'
                sh 'npm install'
                sh 'npm install @wojtekmaj/enzyme-adapter-react-17'
    
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
