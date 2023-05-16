pipeline{
    agent any
    parameters{
        string(name: 'hostname', defaultValue: 'host name', description: 'host name')
    }    
    stages{
        stage(deploy){
            steps{
                script{
                sh ''' 
                scp installation.sh root@${hostname}:/root
                ssh root@${hostname} "sh installation.sh"
                '''
                }
            }
        }
    }
}