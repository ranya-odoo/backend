pipeline {
    agent any 
    tools { 
        maven 'maven'
    }
    stages {
        stage ("Clean up"){
            steps {
                deleteDir()
            }
        }
        stage ("Clone repo"){
            steps {
                sh "git clone "
            }
        }
        stage ("Generate frontend image") {
            steps {
                 dir("backend"){
                    sh "docker build -t angular-app ."
                }                
            }
        }
        stage ("Generate backend image") {
              steps {
                   dir("backend"){
                      sh "mvn clean install"
                      sh "docker build -t backend ."
                  }                
              }
          }
        stage ("Run docker compose") {
            steps {
                 dir("backend"){
                    sh " docker compose up -d"
                }                
            }
        }
    }
}
