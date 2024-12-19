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

        stage('build-app-karsajobs-ui') {
            steps {
                sh 'sh ./build_push_image_karsajobs_ui.sh'
            }
        }
    }
}
