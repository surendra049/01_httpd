pipeline {
    options {
        timeout(time: 1, unit: 'HOURS')
    }
    agent {

        agent any

    }
    stages {
        stage('build and push') {
            when {
                branch 'master'
            }

            sh "docker build -t surendra049/01_httpd ."

            steps {
                withDockerRegistry([url: "", credentialsId: "git"]) {
                    sh("docker push surendra049/demo")

                 }
            }
        }
    }
}

