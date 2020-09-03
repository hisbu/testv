pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('Build') {
            steps {
                echo 'start build'
                    sh 'npm install'
            }
        }

        // stage('Build docker image') {
        //     steps{
        //         script {
        //         	app = docker.build("tiff19/backend-rigup")
        //         }
        //     }
        // }
        // stage('Test docker image') {
        //     steps {
        //         sh 'docker run -d --rm --name testImages -p 8082:80 tiff19/backend-rigup'
        //         input message: "Finished test image? (Click proceed to continue)"
        //     }
        // }
        // stage('Clean up docker test') {
        //     steps {
        //         sh 'docker stop testImages'
        //     }
        // }
        // stage('Push image to registry') {
        //     steps {
        //         script {
        //             docker.withRegistry('https://registry.hub.docker.com', 'dockerHub') {
        //                 app.push("${DOCKER_TAG}")
        //                 app.push("latest")
        //             }
        //         }
        //     }
        // }
        // // stage('Clean up image') {
        // //     steps {
        // //         sh 'docker rmi tiff19/backend-rigup'

        // //     }
        // // }
        // stage('Deploy to Kubernetes') {
        //     steps {
        //         // sh 'chmod +x changeTag.sh'
        //         // sh "./changeTag.sh ${DOCKER_TAG}"
        //         sshagent(['kubeAccess']) {
        //             sh "scp -o StrictHostKeyChecking=no backend.yml tiffany@34.101.239.207:/home/tiffany/"
        //             sh "ssh tiffany@34.101.239.207 sudo kubectl apply -f ."
        //         }
        //     }
        // }
        // stage('Deployment to Production') {
        //     steps {
        //         milestone(1)
        //         kubernetesDeploy (
        //             kubeconfigId: 'kubeconfig',
        //             configs: 'backend.yml',
        //             enableConfigSubstitution: true
        //         )
        //     }
        // }
    }
}

def getDockerTag() {
    def tag = sh script: "git rev-parse HEAD", returnStdout: true
    return tag 
}