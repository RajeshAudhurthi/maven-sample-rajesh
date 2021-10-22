node{
    def mavenHome= tool name: "maven", type: "maven"
    stage('Git Clone'){
        git url: 'https://github.com/prasadchallagondla/maven-app.git'
    }
    stage('Build'){
        sh "${mavenHome}/bin/mvn clean package"
    }
    stage('Build Docker Image'){
        sh "docker build -t naiduprasad/maven-web-application ."
    }
    stage ('Docker Login and Push'){
        withCredentials([string(credentialsId: 'DockerPwd', variable: 'DockerPwd')]) {
        sh "docker login -u naiduprasad -p ${DockerPwd}"
    }

    
        sh "docker push naiduprasad/maven-web-application:latest"
    }
    
    stage('Deploy as Container in Deployment Server'){
       sshagent(['Docker']) {
      
        sh "docker login -u naiduprasad -p Prasad1993"
        
        sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.38.94 docker rm -f webappcontainer || true"
        
        sh "ssh -o StrictHostKeyChecking=no ec2-user@172.31.38.94 docker run -d -p 8080:8080 --name webappcontainer naiduprasad/maven-web-application:latest"
            
            
        }

    }
}
