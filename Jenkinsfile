pipeline {
    agent any
tools {
  maven 'maven_home'
}
    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/aryandoescode/MavenBuild.git', branch : 'master'
            }
        }
        stage('Build Automation') {
            steps {
                sh "mvn clean package"
                archive 'target/*.jar'
            }
        }
        stage('Unit test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                        }
                }
        }
        stage('Code quality check') {
            steps {
                withSonarQubeEnv('sonar') {
			      sh "mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar \
              -Dsonar.projectKey=sq5 \
              -Dsonar.projectName='sq5' \
              -Dsonar.host.url=http://13.90.20.240:9000 \
              -Dsonar.token=sqp_ecb5e4401b47898c81e85f36214a99f3e25dbc99"
		}
            }
        }   
    }

        
}
