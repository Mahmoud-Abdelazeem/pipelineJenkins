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

def lines = new File("${env.WORKSPACE}/data.hpp").readLines()
def result = lines.findAll { it.contains('FW_VERSION_BUILD') }
println "i Have found sth ${result.toString()}"


def rx = /(\d+)\result/
def res = result =~ rx
(0..<res.count).each { println res[it][1] }


echo "${res} this should be 3"
//echo "the result ${result*.replaceAll("[^0-9]", "")}"
//paramsDef = job.getProperty(ParametersDefinitionProperty.class)
//echo "${paramsDef} hellooo Mahomoud"


  //     if(result.equals(it.name)){
    //       println "Current version is ${it.defaultValue}"
         //  it.defaultValue = getUpdatedVersion(versionType, it.defaultValue)
          // println "Next version is ${it.defaultValue}"
//}
       
   }

def extractInt (String xx) {

    return xx.replaceAll("[^0-9]", "")
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