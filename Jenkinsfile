pipeline {
    agent any
    tools { 
        maven 'Maven 3.3.9' 
        jdk 'jdk8' 
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
        stage('Deliver for development') {
            when {
                branch 'development' 
            }
        stages {
           stage('Checkout SCM') {
              git branch: 'development', credentialsId: 'your_credentials', url: "giturlrepo"
             }
        
            stage('Build') {
               steps {
                  sh 'cd $project_directory'
                  sh 'mvn clean install'
               }
        }
        stage('deployement') {
            steps {
               ansible-playbook -i inventories/hosts deployement.yml -e target=development
            }
        }
     }
        stage('Deploy for production') {
            when {
                branch 'production'  
            }
            stage('Checkout SCM') {
                git branch: 'master', credentialsId: 'your_credentials', url: "giturlrepo"
            }
            stage('Build') {
               steps {
                  sh 'cd $project_directory'
                  sh 'mvn clean install'
               }
            }
            stage('deployement') {
              steps {
                 ansible-playbook -i inventories/hosts deployement.yml -e target=production
            }
         }
        }
    }
}
