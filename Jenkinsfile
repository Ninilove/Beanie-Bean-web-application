pipeline{
    agent { label 'perez' } 
    tools{
        maven "maven3.9.8"
    }
    stages{
        stage('1CodeClone'){
            steps{
                sh "echo 'This is the latest version of Tesla application.'"
                git branch: 'main', url: 'https://github.com/Ninilove/Beanie-Bean-web-application.git'
            }
        }
        
        stage('2Test&Build'){
            steps{
                sh "echo 'Maven should be able to do a build now'"
                sh "mvn clean install"
            }
        }
        /*
        stage('3CodeQuality'){
            steps{
                sh "echo 'Running code quality analysis'"
                sh "mvn sonar:sonar"
            }
        }
         */  
    
        stage('4UploadArtifacts'){
            steps{
                sh "echo 'pushing Artifacts to remote repository'"
                sh "mvn deploy"
            }
        }
        stage('5DeploymentToUat'){
            steps{
                sh "echo 'Deployment to Tomcat'"
                deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat1-jenkins', path: '', url: 'http://34.203.11.143:8080/')], contextPath: null, war: 'target/*war'
            }
        }
    
    }
}
