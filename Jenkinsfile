pipeline{
    agent any
    parameters{
        string(name='hostname',defaultvalue='hostname',description='hostname')
    }
    stages{
        stage(deploy){
            steps{
            script{
                sh ''' 
                ssh root@${hostname} "sh installation.sh"
                '''
                }
            }
        }
    }
}