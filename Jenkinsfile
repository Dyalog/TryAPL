@Library('swarm-deploy') _

def DockerApp
def DockerJarvis
def Testfile
def Branch = env.BRANCH_NAME.toLowerCase()
def storageBranch

if (Branch == 'master') {
    storageBranch = 'staging'
} else {
    storageBranch = Branch
}

node ('Docker') {
    stage ('Checkout') {
        checkout scm
    }
    stage ('Update Jarvis') {
        withDockerRegistry(credentialsId: '0435817a-5f0f-47e1-9dcc-800d85e5c335') {
            DockerJarvis=docker.image('dyalog/jarvis:v1.17.0')
            DockerJarvis.pull()
        }
    }

    
    stage ('Test website') {
        DockerApp = DockerJarvis.run ("-it -v${WORKSPACE}:/app")
        Testfile = "${WORKSPACE}/tryapl-CI.log"
        println(DockerApp.id)
        def DOCKER_IP = sh (
            script: "docker inspect ${DockerApp.id} | jq .[0].NetworkSettings.IPAddress | sed 's/\"//g'",
            returnStdout: true
        ).trim()

        try {
            sh "sleep 10 && rm -f ${Testfile} && touch ${Testfile} && ${WORKSPACE}/CI/runtests.sh ${Testfile} ${DOCKER_IP}"
        }
        catch (Exception e) {
            println 'Failed to run Try APL site correctly - cleaning up.'
            sh ("docker logs ${DockerApp.id}")
            sh ('git rev-parse --short HEAD > .git/commit-id')
            withCredentials([string(credentialsId: '250bdc45-ee69-451a-8783-30701df16935', variable: 'GHTOKEN')]) {
                commit_id = readFile('.git/commit-id')
                sh "${WORKSPACE}/CI/githubComment.sh ${DockerApp.id} ${commit_id}"
            }
            DockerApp.stop()
            
            throw e;
        }
        DockerApp.stop()
    }
    
    stage ('Publish Try APL') {
        if ((Branch == 'live') || (Branch == 'staging') || (Branch == 'swarm')) {
            ftpPublisher alwaysPublishFromMaster: false, continueOnError: false, failOnError: false, publishers: [[
                configName: 'TryAPLFTP',
                transfers: [[
                    asciiMode: false,
                    cleanRemote: false,
                    excludes: '',
                    flatten: false,
                    makeEmptyDirs: false,
                    noDefaultExcludes: false,
                    patternSeparator: '[, ]+',
                    remoteDirectory: "/${Branch}/",
                    remoteDirectorySDF: false,
                    removePrefix: '',
                    sourceFiles: '**/*'
                ]],
                usePromotionTimestamp: false,
                useWorkspaceInPromotion: false,
                verbose: true
            ]]
        } else {
            sh ("mkdir -p /DockerVolumes/ftp/tryapl/${Branch}/")
            sh ("cp -R * /DockerVolumes/ftp/tryapl/${Branch}/")
        }
        stash includes: 'docker-compose-live.yml,docker-compose-staging.yml', name: 'tryapl-compose'
    }
}
if (env.BRANCH_NAME.contains('staging') || env.BRANCH_NAME.contains('live')) {
    node (label: 'swarm && gosport') {
        stage('Deploying with Docker Swarm') {
            withCredentials([string(credentialsId: '99fcd81b-01f3-40bd-9a90-3a9c85065f1e', variable: 'TAE_SALT')]) {
                unstash 'tryapl-compose'
                // The swarm scripts expect service.yml
                sh "mv docker-compose-${Branch}.yml service.yml"
                sh ("sed -i 's/{{BRANCH}}/${Branch}/g' ./service.yml")
                r = swarm "TryAPL-${Branch}"
                echo r
            }
        }
    }
}