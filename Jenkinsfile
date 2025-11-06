pipeline{
  agent any
  stages{
    stage("git clone"){
      steps{
        git branch: 'main', url: 'https://github.com/govindthelli/Bharat_560.git'
      }
    }
    stage("buid image"){
      steps{
        sh 'sudo docker rm -f $(docker ps -aq) || true'
        sh 'sudo docker rmi -f $(docker images -aq) || true'
        sh 'sudo docker build -t nginx1 .'
      }
    }
    stage("deployment"){
      steps{
        sh 'sudo docker run --name demo -dp 80:80 nginx1'
      }
    }
  }
}
          
