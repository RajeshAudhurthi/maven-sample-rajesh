node('paytmnode'){
 
 properties([
    buildDiscarder(logRotator(numToKeepStr: '3')),
    pipelineTriggers([
        pollSCM('* * * * *')
    ])
])

 def mavenHome = tool name: 'maven3.6.1', type: 'maven'
 
 stage('CheckoutCode') {
 git branch: 'master', credentialsId: '82478555-478a-4b62-900c-fcdedfa161a3', url: 'https://github.com/MithunTechnologiesDevOps/maven-web-application.git'
 }  
  
  stage('Build') {
 
    sh "${mavenHome}/bin/mvn clean package"
  }

  stage('ExecuteSonarQubeReport') {
 
 sh "${mavenHome}/bin/mvn sonar:sonar"
 }     
  
  stage('UploadArtifactIntoNexus') {
 
 sh "${mavenHome}/bin/mvn deploy"
 } 
 
 stage('DeployAppIntoTomcat'){
  sh "cp $WORKSPACE/target/*.war /opt/apache-tomcat-9.0.19/webapps/"
  } 
  
   stage('SendEmailNotification'){
  emailext body: '''Build is Over

  Regards,
  Mithun Technologies,
  9980923226.
  ''', subject: 'Build is Over', to: 'devopstrainingblr@gmail.com'
  } 
    
    
}
