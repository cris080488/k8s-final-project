#!/bin/bash

echo "criando as imagens ......"
docker build -t crisosilva88/k8s_project_backend:1.1 backend/.

docker build -t crisosilva88/k8s_project_database:1.1 database/.

echo "carregando as imagens ......"
docker push crisosilva88/k8s_project_backend:1.1

docker push crisosilva88/k8s_project_database:1.1

echo "Criando os Serviços ......"
kubectl apply -f ./service.yml

echo "Realizando o Deploy ......"
kubectl apply -f ./deployment.yml

echo "Processo finalizado!"

