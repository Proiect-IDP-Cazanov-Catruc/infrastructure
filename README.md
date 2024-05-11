# Proiect IDP -- Infrastructura

## Schimbari fata de documentatia initiala
Am decis sa schimb serviciul folosit pe post de Gateway `Kong` -> `nginx` din
cauza ca nu am reusit sa setez rutele sa functioneze corect.

## Externe
  - [Kubegres](https://www.kubegres.io/)
  - [Grafana Dashboard](https://grafana.com/grafana/dashboards/315-kubernetes-cluster-monitoring-via-prometheus/)
  - [Postgres Exporter](https://github.com/prometheus-community/postgres_exporter)

## Remote cluster prerequisites
```bash
kubectl apply -f https://raw.githubusercontent.com/reactive-tech/kubegres/v1.18/kubegres.yaml
```
```bash
kubectl create namespace idp
```

Apply `db-secret` to `idp` namespace containing keys `superUserPassword` and `replicationUserPassword`.
## Testare
Deployment:
```powershell
.\deploy.ps1
```
Testat pe cluster `minikube` local cu 2 noduri.