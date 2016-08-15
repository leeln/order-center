node {
  stage 'build'
  docker.image('maven:3.3.3-jdk-8').inside {
    git 'https://github.com/leeln/order-center.git'
    sh 'mvn clean package'
    archive 'build/libs/*.war'
  }

  stage 'package'
  docker.build('leeln/order-center').push()
}