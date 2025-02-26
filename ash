/*trigger:
- main

pool:
  name: Azure Pipelines


steps:

    
- script: |
    echo "Azure Login"
    az login --service-principal -u "e90f8a1a-6cfd-48dc-863c-d6bc7356fea2" -p "fWS8Q~zOPGixhTXuCopEXzfWKk0lWTmJZ6bDlcRW" --tenant "7917799a-9669-4e41-b87d-4c14fefd7c41"
  displayName: 'Azure Login'

- script: |
    echo "kubeconfig Configuration"
    az account set --subscription 460bc14f-4852-44b0-809b-ce133bada6c4
    az aks get-credentials --resource-group oueslati --name oueslati
  displayName: 'Set AKS kubeconfig'

- script: |
   docker build -t mdaziz/pipelines-javascript-docker .
  displayName: 'Build Docker Image'

- script: |
    docker login -u mdaziz -p Clubca1920
  displayName: 'Docker Login'


- script: |
    docker push mdaziz/pipelines-javascript-docker:latest
  displayName: 'Push Docker Image'

- script: |
    kubectl apply -f deployment.yaml
  displayName: 'Deploy to AKS' */
