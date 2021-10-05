pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hellooo'
                script {
                   
                    echo "${returnvalue()}"
                }

            }
        }
    }
  }

def returnvalue(){
def jenkins = Jenkins.getInstance()
def jobName = "increase2"
String versionType = "minor"
def job = jenkins.getItem(jobName)
echo "${job} Hello ya Ro2a"
 

//get the current version parameter and update its default value
paramsDef = job.getProperty(ParametersDefinitionProperty.class)
echo "${paramsDef} hellooo Mahomoud"
if (paramsDef) {
    echo "hellooo Mahomoud Farouk"
   paramsDef.parameterDefinitions.each{
       if("version".equals(it.name)){
           println "Current version is ${it.defaultValue}"
           it.defaultValue = getUpdatedVersion(versionType, it.defaultValue)
           println "Next version is ${it.defaultValue}"
       }
       else{println "uffewfewfewfewfew"}
   }
}
}
//determine the next version by the required type 
//and incrementing the current version

def getUpdatedVersion(String versionType, String currentVersion){

    def split = currentVersion.split('\\.')
    switch (versionType){
        case "minor.minor":
            split[2]=Integer+1.parseInt(split[2])
            break
        case "minor":
            split[1]=Integer+1.parseInt(split[1])
            break;
        case "major":
           split[0]=Integer+1.parseInt(split[0])
           break;
    }
    return split.join('.')
}