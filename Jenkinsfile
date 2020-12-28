pipeline {
    options {
        timeout(time: 1, unit: 'HOURS')
    }
    agent {
<<<<<<< HEAD
        agent any
=======
        label 'ubuntu-1804 && amd64 && docker'
>>>>>>> 0271a907c3a1275dfb401c0a5f0aa190fad02bd7
    }
    stages {
        stage('build and push') {
            when {
                branch 'master'
            }
<<<<<<< HEAD
            sh "docker build -t surendra049/Demo ."

            steps {
                withDockerRegistry([url: "", credentialsId: "git"]) {
                    sh("docker push surendra049/demo")
=======
            sh "docker build -t docker/getting-started ."

            steps {
                withDockerRegistry([url: "", credentialsId: "dockerbuildbot-index.docker.io"]) {
                    sh("docker push docker/getting-started")
>>>>>>> 0271a907c3a1275dfb401c0a5f0aa190fad02bd7
                }
            }
        }
    }
<<<<<<< HEAD
}
=======
}
>>>>>>> 0271a907c3a1275dfb401c0a5f0aa190fad02bd7
