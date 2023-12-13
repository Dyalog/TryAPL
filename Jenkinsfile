@Library('swarm-deploy') _

def DockerApp
def DockerJarvis
def Testfile = '/tmp/tryapl-CI.log'
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
            DockerJarvis=docker.image('dyalog/jarvis:latest')
            DockerJarvis.pull()
        }
    }

    
    stage ('Test website') {
        DockerApp = DockerJarvis.run ("-it -v${WORKSPACE}:/app")
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
        if ((Branch == 'live') || (Branch == 'Staging') || (Branch == 'swarm')) {
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
    
    stage('Deploying with Rancher') {
        withCredentials([
                string(credentialsId: '99fcd81b-01f3-40bd-9a90-3a9c85065f1e', variable: 'TAE_SALT'),
                usernamePassword(credentialsId: '02543ae7-7ed9-4448-ba20-6b367d302ecc', passwordVariable: 'SECRETKEY', usernameVariable: 'ACCESSKEY')]) {
            if (env.BRANCH_NAME.contains('staging')) {
                sh ("sed -i 's/{{BRANCH}}/${Branch}/g' ./docker-compose-staging.yml")
                sh '/usr/local/bin/rancher-compose -f ./docker-compose-staging.yml --access-key $ACCESSKEY --secret-key $SECRETKEY --url http://rancher.dyalog.com:8080/v2-beta/projects/1a5/stacks/1st41 -p TryAPL-Staging up --force-upgrade --confirm-upgrade --pull -d'
            }
            if (env.BRANCH_NAME.contains('live')) {
                sh ("sed -i 's/{{BRANCH}}/${Branch}/g' ./docker-compose-live.yml")
                sh '/usr/local/bin/rancher-compose -f ./docker-compose-live.yml --access-key $ACCESSKEY --secret-key $SECRETKEY --url http://rancher.dyalog.com:8080/v2-beta/projects/1a5/stacks/1st9 -p TryAPL up --force-upgrade --confirm-upgrade --pull -d'
            }
        }
    }
}
if (env.BRANCH_NAME.contains('swarm')) {
    node (label: 'swarm && gosport') {
        stage('Deploying with Docker Swarm') {
            withCredentials([string(credentialsId: '99fcd81b-01f3-40bd-9a90-3a9c85065f1e', variable: 'TAE_SALT')]) {
                unstash 'tryapl-compose'
                sh 'mv docker-compose-live.yml service.yml'
                sh ("sed -i 's/{{BRANCH}}/${Branch}/g' ./service.yml")
                r = swarm 'TryAPL'
                echo r
            }
        }
    }
}