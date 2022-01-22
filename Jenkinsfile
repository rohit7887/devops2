node {
   
 stage('Git ChechOut') {
  git branch: 'master', url: 'https://github.com/rohit7887/devops2.git' 
 }
 
 stage('Maven Clean') {
  sh 'mvn clean'
 }

 stage('Maven Compile') {
  sh 'mvn compile'
 }
 
 stage('Maven Test') {
    sh 'mvn test'
 }

 stage('Maven Package') {
  sh 'mvn package'
 }
 
 stage('Archive Artifact') {
  archiveArtifacts artifacts: 'target/petclinic.war', followSymlinks: false
 }
 
 stage('Docker Deployment') {
  sh 'docker-compose up -d --build'
 }
 
  stage('Terraform Deployment'){
     sh "PATH=/bin/terraform"
     sh "terraform init ; terraform apply --auto-approve"
 }
 
}
