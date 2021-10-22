#!groovy

properties([
    buildDiscarder(logRotator(numToKeepStr: '3')),
    pipelineTriggers([
        pollSCM('* * * * *')
    ])
])


node('node1'){
    def mavenHome = tool name: 'Maven3.1.1', type: 'maven'
    
    stage('Checkoutthecode'){
     git branch: 'master', credentialsId: '07dd149d-4881-45a8-86ed-3cf7a77cccce', url: 'https://github.com/MithunTechnologiesDevOps/maven-web-application.git'   
        
    }
    
    stage('Build'){
        
      sh "${mavenHome}/bin/mvn clean package"
    }
    
    stage('SoanrQubeReport'){
        
       sh "${mavenHome}/bin/mvn sonar:sonar" 
    }
    
    stage('UploadArtifactsToNexus'){
         sh "${mavenHome}/bin/mvn clean deploy" 
    }
    /*
    stage('DeployIntoTomcat'){
      sh "echo app is deploying"    
      sh "cp $WORKSPACE/target/*.war /opt/apache-tomcat-9.0.16/webapps/"  
      sh "echo App is deployed"
    }
    */
    
    stage('SendEmailNotification'){
        mail bcc: 'devopstrainingblr@gmail.com', body: '''Build Done

Regards,
Mithun Technologies
''', cc: 'devopstrainingblr@gmail.com', from: '', replyTo: '', subject: 'Build done', to: 'devopstrainingblr@gmail.com,mohan.unix87@gmail.com'
    }
    
}
