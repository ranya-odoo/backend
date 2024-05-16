pipeline {
    agent any 
    tools { 
        maven 'maven'
    }
     environment {
        NEXUS_VERSION = "nexus3"
        NEXUS_PROTOCOL = "http"
        NEXUS_URL = "192.168.1.55:8081"
        NEXUS_REPOSITORY = "maven-nexus-repo"
        NEXUS_CREDENTIAL_ID = "nexus-user-credentials"
    }
    stages {
        stage ("Clean up"){
            steps {
                deleteDir()
            }
        }
        stage ("Clone repo"){
            steps {
                sh "git clone https://github.com/MaBouz/backend.git"
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
