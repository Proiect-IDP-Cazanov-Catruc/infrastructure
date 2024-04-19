# Proiect IDP -- Infrastructura

## Schimbari fata de documentatia initiala
Am decis sa schimb serviciul folosit pe post de Gateway `Kong` -> `nginx` din
cauza ca nu am reusit sa setez rutele sa functioneze corect.

## CRDs
[Kubegres](https://www.kubegres.io/):
```bash
kubectl apply -f https://raw.githubusercontent.com/reactive-tech/kubegres/v1.18/kubegres.yaml
```
Se asteapta pana toate obiectele vor fi ready:
```bash
kubectl get all -n kubegres-system
```

## Testare
Testat pe cluster `minikube` local cu 2 noduri.