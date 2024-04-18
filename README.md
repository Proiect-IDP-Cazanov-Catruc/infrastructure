# Proiect IDP -- Infrastructura

## CRDs
[Kubegres](https://www.kubegres.io/):
```bash
kubectl apply -f https://raw.githubusercontent.com/reactive-tech/kubegres/v1.18/kubegres.yaml
```
Se asteapta pana toate obiectele vor fi ready:
```bash
kubectl get all -n kubegres-system
```
[Kong](https://docs.konghq.com/kubernetes-ingress-controller/latest/get-started/):
```bash
kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.0.0/standard-install.yaml
```

## Testare
Testat pe cluster `minikube` local cu 2 noduri.