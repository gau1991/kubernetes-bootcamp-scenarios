ssh root@host01 "while [ \`minikube status &>/dev/null; echo \$?\` -ne 0 ]; do sleep 1; done && kubectl run kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080 --replicas=4 && kubectl expose deployments/kubernetes-bootcamp --type=\"NodePort\" --port 8080 && minikube addons enable dashboard && echo done >> /opt/katacoda-completed"
