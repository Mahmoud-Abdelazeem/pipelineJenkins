#!groovy
pipeline{
	agent any
	
	environment {
    PATH = "~/Projects/qtpipeline:$PATH"
    }
    
	triggers{ 
	
        pollSCM('H/15 1 * * *')
    }

	options{
		buildDiscarder(logRotator(numToKeepStr: '10'))
	}

	parameters{
		booleanParam name: 'RUN_TESTS', defaultValue: true, description: 'Run Tests?'
		booleanParam name: 'RUN_ANALYSIS', defaultValue: true, description: 'Run Static Code Analysis?'
		booleanParam name: 'DEPLOY', defaultValue: true, description: 'Deploy Artifacts?'
	}
	
	
	stages{
          stage('Build'){
          steps {
                 
                 echo "PATH is: $PATH"
                }
        }
        
        stage('UnitTest'){
            when{
                    environment name: 'RUN_TESTS', value: 'true'
                }
                
            steps{
                dir("unittest")
                {
                    echo "true true"                 
                }
            }
          
          post{
            failure{
                echo "true true"  
              }
            }     
        }
        
        stage('Analyse'){
            when {
                environment name: 'RUN_ANALYSIS', value: 'true'
            }
            steps{
                echo "true true"  
            }
        }

        stage('Deploy'){
            when{
                environment name: 'DEPLOY', value: 'true'
            }
            steps{
                echo "true true"  
            }
        }
	}
}
