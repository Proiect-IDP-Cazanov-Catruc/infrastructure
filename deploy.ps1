kubectl apply -f dev/secret-db.yaml
kubectl apply -f _scripts/deploy-other.yaml
kubectl apply -n portainer -f https://downloads.portainer.io/ce2-19/portainer.yaml
kubectl apply -f https://raw.githubusercontent.com/reactive-tech/kubegres/v1.18/kubegres.yaml
echo "Waiting for kubegres to initialize..."
kubectl wait --for=condition=available --timeout=600s -n kubegres-system deployment.apps/kubegres-controller-manager
kubectl apply -f _scripts/deploy-kubegres.yaml
echo "Waiting for at least one db pod to start..."
sleep 5
kubectl wait -n idp --for=condition=ready pod/db-kubegres-1-0 --timeout=600s
kubectl apply -f _scripts/deploy-io.yaml
