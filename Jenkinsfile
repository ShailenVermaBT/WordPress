pipeline {
    agent any
    stages{
        stage("Git-checkout") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: 'chmod +x /tmp/WordPress/scripts/*', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/var/www/html/WordPress', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/**')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Publish-Over-SSh") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '/var/www/html/WordPress', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '**/**')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Change-Dir-permission") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/var/www/html/WordPress/scripts/change_permissions.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
        
        stage("Installing-Dependencies") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/var/www/html/WordPress/scripts/install_dependencies.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Creating-test-DB") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/var/www/html/WordPress/scripts/create_test_db.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Starting-Services") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/var/www/html/WordPress/scripts/start_server.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }

        stage("Stopping-Services") {
            steps{
                sshPublisher(publishers: [sshPublisherDesc(configName: 'Cloudwatch-ubuntu', transfers: [sshTransfer(cleanRemote: false, excludes: '', execCommand: '/var/www/html/WordPress/scripts/stop_server.sh', execTimeout: 120000, flatten: false, makeEmptyDirs: false, noDefaultExcludes: false, patternSeparator: '[, ]+', remoteDirectory: '', remoteDirectorySDF: false, removePrefix: '', sourceFiles: '')], usePromotionTimestamp: false, useWorkspaceInPromotion: false, verbose: false)])
            }
        }
    }
}


