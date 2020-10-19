# ARGO-CD

#Argocd Namespace create
```
kubectl create ns hello-gitops
kubectl create ns argocd
```
#Argocd Insallation in argocd namespace
```
kubectl apply -n argocd -f install.yaml
```

#Argocd Password fetch
```
kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2
```

#TO check all pods are running
```
kubectl -n argocd get pods
```

#Port forward to view the argocd Dashboard
```
kubectl port-forward svc/argocd-server -n argocd 8080:443
```

#Create ArgoCD application
```
kubectl apply -n argocd -f argo-cd/app.yaml 
```

#Githube Action
run latest workflow in github action to deploy the application
