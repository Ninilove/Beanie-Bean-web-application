 node{
    def mavenHome = tool name: 'maven3.9.8'
    stage('1CloneCode'){
        git branch: 'main', url: 'https://github.com/Ninilove/Beanie-Bean-web-application.git'
        //sh "https://github.com/nfestaclass04/maven-web-application.git"
        //bat "https://github.com/nfestaclass04/maven-web-application.git"
    }
    stage('2Test&Build'){
        sh "${mavenHome}/bin/mvn clean install"
    }
    stage('3CodeQuality'){
        sh "${mavenHome}/bin/mvn sonar:sonar"
    }
    stage('4UploadArtifacts'){
        sh "${mavenHome}/bin/mvn deploy"
    }
    stage('5DeploymentUat'){
        deploy adapters: [tomcat9(alternativeDeploymentContext: '', credentialsId: 'tomcat-jenkins', path: '', url: 'http://52.91.170.116:8080/')], contextPath: null, war: 'target/*war'
    }
    stage('6DeploymentProd'){}
  /*

  stage('6Approval'){
        timeout(time:11, unit:'HOURS'){
            input message: 'Application is now ready for deployment to production. Please, review and provide your Approval'
        }
    }
    stage('7DeploymentToProd'){
        deploy adapters: [tomcat9(credentialsId: 'jenkins-tomcat-credentials', path: '', url: 'http://44.197.229.164:8080/')], contextPath: null, war: 'target/*war'
    }
    stage('8Notifications'){
        emailext body: '''This would be the final status report on pipeline builds.

Regards
''', subject: 'Pipeline Status', to: 'nfestatech@mail.com'

    }
    */
}
