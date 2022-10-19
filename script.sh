echo "criando as imagens ......"
docker build -t crisosilva88/k8s_project_backend:1.0 /backend/.

docker build -t crisosilva88/k8s_project_database:1.0 /database/.

echo "carregando as imagens ......"
docker push crisosilva88/k8s_project_backend:1.0

docker push crisosilva88/k8s_project_database:1.0

echo "Criando os Serviços ......"
kubectl apply -f ./service.yml

echo "Realizando o Deploy ......"
kubectl apply -f ./deployment.yml

echo "Processo finalizado!"

