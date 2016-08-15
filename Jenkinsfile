node {
  stage 'build'
  docker.image('openjdk:8u92-jdk-alpine').inside {
    git 'https://github.com/leeln/order-center.git'
    sh './gradlew build'
    archive 'build/libs/*.war'
  }

  stage 'package'
  docker.build('leeln/order-center').push()
}