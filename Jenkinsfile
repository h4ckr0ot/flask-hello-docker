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

        stage('Run Test') {
          steps {
            sh 'python3 -m venv env && chmod +x env/bin/activate && ./env/bin/activate && ls env/bin/ && pip3 install flask && pip freeze > requirements.txt && python app.py'
          }
        }

      }
    }

  }
}