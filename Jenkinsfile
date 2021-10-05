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

//paramsDef = job.getProperty(ParametersDefinitionProperty.class)
//echo "${paramsDef} hellooo Mahomoud"

    echo "hellooo Mahomoud Farouk"
    // a little script to obtain the numbers from a String
// given a string with number
//def tel = 'ds 48 q4  8q3d4 3q8'
// extract the numbers
def nb = result =~ /[0-9]/
echo "${nb} hellooo Mahomoud ROOOCOCOC"
  //     if(result.equals(it.name)){
    //       println "Current version is ${it.defaultValue}"
         //  it.defaultValue = getUpdatedVersion(versionType, it.defaultValue)
          // println "Next version is ${it.defaultValue}"
//}
       
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