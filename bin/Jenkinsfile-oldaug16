node('flipkart-node')
{

  //http://localhost:8080/pipeline-syntax/globals#currentBuild
  //Getting the  env  global varibale values
 
  echo "GitHub BranhName ${env.BRANCH_NAME}"
  echo "Jenkins Job Number ${env.BUILD_NUMBER}"
  echo "Jenkins Node Name ${env.NODE_NAME}"
  
  echo "Jenkins Home ${env.JENKINS_HOME}"
  echo "Jenkins URL ${env.JENKINS_URL}"
  echo "JOB Name ${env.JOB_NAME}"

  def MavenHome = tool name: 'Maven3.6.1', type:'maven'
  
   properties([
       buildDiscarder(logRotator(numToKeepStr: '3')),
       pipelineTriggers([
           pollSCM('* * * * *')
       ])
   ])
   
        /*
        stage('CheckoutCode'){
        git branch: 'development', credentialsId: '2587140f-2970-4f0e-aac3-62624e3d9682', url: 'https://github.com/MithunTechnologiesDevOps/maven-web-application.git'
        }
        
        
        stage('Build')
        {
           sh "${MavenHome}/bin/mvn clean package"
        }
        
        stage('ExecuteSonarQubeReport'){
            sh "${MavenHome}/bin/mvn sonar:sonar"
        }
        
        stage('UploadArtifact'){
            sh "${MavenHome}/bin/mvn deploy"
        }
        
        stage('DeployApplication'){
  
        sshagent(['e5a7a729-2e31-4d89-9b43-b3154cf128de']) {
         sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@13.233.149.177:/opt/apache-tomcat-9.0.22/webapps/maven-web-application.war"
	    }
         }
          */
     stage('EmailNotification'){
         emailext body: '''Build is over
         Please check the logs...
        
         Regards,
         Mithun Software Solutions,
         Bangalore.
         ''', subject: 'Build done', to: 'devopstrainingblr@gmail.com'
         
         }

}
