pipeline {
    agent any

    stages {
        stage('lint-dockerfile') {
            agent {
                docker {
                    image 'hadolint/hadolint:latest-alpine'
                }
            }
            steps {
                script {
                    String dockerfilePath = 'Dockerfile'

                    sh """
                    if [ -f ${dockerfilePath} ]; then
                        hadolint ${dockerfilePath}
                    else
                        echo "Error: ${dockerfilePath} not found"
                        exit 1
                    fi
                    """
                }
            }
        }

        stage('test-app') {
            agent {
                docker {
                    image 'golang:alpine'
                }
            }
            steps {
                sh 'go test -v -short --count=1 $(go list ./...)'
            }
        }

        stage('build-app-karsajobs') {
            steps {
                sh 'sh ./build_push_image_karsajobs.sh'
            }
        }
    }
}
