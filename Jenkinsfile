pipeline {
    agent {
        docker {
        image 'node:lts-buster-slim' 
        args '-p 3000:3000' 
        }
    }

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
