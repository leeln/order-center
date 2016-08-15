node {
  stage 'build'
  docker.image('frekele/java:jdk8u102').inside {
    git 'https://github.com/leeln/order-center.git'
    sh './gradlew build'
    archive 'build/libs/*.war'
  }

  stage 'package'
  docker.build('leeln/order-center').push()
}