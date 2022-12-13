pipeline {
    agent any
    stages{
        stage("Git-checkout") {
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'f5f1d5fa-8fe5-4612-bfdb-38ee299fd8e6', url: 'https://github.com/ShailenVermaBT/WordPress.git']]])
            }
        }

        stage("Publish-Over-SSh") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/tmp/WordPress/', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/**')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Change-Dir-permission") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/tmp/WordPress/scripts/change_permissions.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
        
        stage("Installing-Dependencies") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/tmp/WordPress/scripts/install_dependencies.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Creating-test-DB") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/tmp/WordPress/scripts/create_test_db.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Starting-Services") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/tmp/WordPress/scripts/start_server.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        // stage("Stopping-Services") {
        //     steps{
        //         sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/tmp/WordPress/scripts/stop_server.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
        //     }
        // }
    }
}


