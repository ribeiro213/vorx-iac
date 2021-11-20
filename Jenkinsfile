pipeline {
agent any
  stages {
    stage('Pull') {
      steps {
        git url: 'https://github.com/ribeiro213/vorx-iac.git', branch: 'main'
      }
    }

    stage('TF Init&Plan') {
      steps {
        script {
          sh 'terraform init'
          sh 'terraform plan -out=myplan.out'
        }
      }
    }

    stage('Approval') {
      steps {
        script {
          def userInput = input(id: 'Confirmar', message: 'Deseja modificar a Infraestrutura?' , parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply na Infraestrutura', name: 'Confirmar'] ])
        }
      }
    }

    stage('TF Apply') {
      steps {
          sh 'terraform apply myplan.out'
      }
    }
  } 
}