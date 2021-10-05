pipeline {
    agent any
    options{
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }

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
def versionType = "minor"
File myFile = new File ('${WORKSPACE}/tets2/data.hpp').readLines()
//Get the list of matching lines
def result = myFile.findAll { it.contains('const char FW_VERSION_3S_STRING[9]') }
println "the result is ${result.toString()}"
def job = jenkins.getItem(jobName)
echo "${jobName}"
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