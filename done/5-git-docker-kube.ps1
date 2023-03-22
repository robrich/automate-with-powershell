
$ErrorActionPreference = "Stop"

# git clone repository
git clone https://github.com/robrich/...
# docker build and push
docker build -t robrich/myapp .
docker push robrich/myapp
# kubectl apply
kubectl apply -f k8s.yaml
