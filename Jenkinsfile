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
					
                 job()
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

def jenkins = Jenkins.getInstance()
def jobName = "yourJobName"
String versionType = "minor"
def job = jenkins.getItem(jobName)

//get the current version parameter and update its default value
paramsDef = job.getProperty(ParametersDefinitionProperty.class)
if (paramsDef) {
   paramsDef.parameterDefinitions.each{
       if("version".equals(it.name)){
           println "Current version is ${it.defaultValue}"
           it.defaultValue = getUpdatedVersion(versionType, it.defaultValue)
           println "Next version is ${it.defaultValue}"
       }
   }
}

//determine the next version by the required type 
//and incrementing the current version

def getUpdatedVersion(String versionType, String currentVersion){

    def split = currentVersion.split('\\.')
    switch (versionType){
        case "minor.minor":
            split[2]=++Integer.parseInt(split[2])
            break
        case "minor":
            split[1]=++Integer.parseInt(split[1])
            break;
        case "major":
           split[0]=++Integer.parseInt(split[0])
           break;
    }
    return split.join('.')
}
