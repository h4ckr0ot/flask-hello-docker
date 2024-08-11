pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/ppeuchin/simple-flask-app', branch: 'main')
      }
    }

    stage('Log') {
      parallel {
        stage('Log') {
          steps {
            sh 'ls -la'
          }
        }

        stage('Run Tests') {
          steps {
            sh 'python3 -m venv env && chmod +x env/bin/activate && ./env/bin/activate && ls -a && env/bin/pip install -r requirements.txt && env/bin/python -m pytest'
          }
        }

      }
    }

    stage('Build') {
      steps {
        sh 'docker build .'
      }
    }

  }
}