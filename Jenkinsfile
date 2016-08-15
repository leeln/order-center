node {
  stage 'build'
  docker.image('frekele/java:jdk8u102').inside {
    sh './gradlew build'
    archive 'build/libs/*.war'
  }

  stage 'package'
  docker.build('leeln/order-center').push()
}