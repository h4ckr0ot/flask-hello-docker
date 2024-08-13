pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/ppeuchin/simple-flask-app', branch: 'main')
      }
    }

    stage('Run tests') {
      steps {
        sh 'python3 -m venv env && chmod +x env/bin/activate && ./env/bin/activate && ls -a && env/bin/pip install -r requirements.txt && env/bin/python -m pytest'
      }
    }

    stage('Build') {
      steps {
        sh 'docker build . -t ravesn/simple-flask-app:v0.0.1'
      }
    }

    stage('Push to Docker Hub') {
      steps {
        sh 'docker push ravesn/simple-flask-app:v0.0.1'
      }
    }

  }
}