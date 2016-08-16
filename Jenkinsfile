node {
  stage 'build'
  checkout scm
  docker.image('leeln/java:jdk-8').inside {
    sh './gradlew build'
    archive 'build/libs/*.war'
  }

  stage 'package'
  docker.build('leeln/order-center').push()
}