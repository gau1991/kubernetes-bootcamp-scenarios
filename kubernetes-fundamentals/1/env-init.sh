ssh root@host01 "while [ \`minikube status &>/dev/null; echo \$?\` -ne 0 ]; do sleep 1; done && minikube addons enable dashboard && echo done >> /opt/katacoda-completed"
