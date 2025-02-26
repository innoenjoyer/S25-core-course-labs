# Helm

## Helm setup

### Install Helm Chart

```shell
helm install moscow-time-app moscow-time-app
```

```text
NAME: moscow-time-app
LAST DEPLOYED: Wed Feb 26 19:29:23 2025
NAMESPACE: default
STATUS: deployed
REVISION: 1
NOTES:
1. Get the application URL by running these commands:
  export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/name=moscow-time-app,app.kubernetes.io/instance=moscow-time-app" -o jsonpath="{.items[0].metadata.name}")
  export CONTAINER_PORT=$(kubectl get pod --namespace default $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
  echo "Visit http://127.0.0.1:8080 to use your application"
  kubectl --namespace default port-forward $POD_NAME 8080:$CONTAINER_PORT
```

### Minikube dashboard

```shell
minikube dashboard
```

```text
* Enabling dashboard ...
  - Using image docker.io/kubernetesui/dashboard:v2.7.0
  - Using image docker.io/kubernetesui/metrics-scraper:v1.0.8
* Some dashboard features require the metrics-server addon. To enable all features please run:

        minikube addons enable metrics-server

* Verifying dashboard health ...
* Launching proxy ...
* Verifying proxy health ...
* Opening http://127.0.0.1:65517/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy/ in your default browser...
```

![Minikube dashboard](assets/minikube_dashboard.png)

### Access Application

```shell
minikube service moscow-time-app
```

```text
|-----------|-----------------|-------------|--------------|
| NAMESPACE |      NAME       | TARGET PORT |     URL      |
|-----------|-----------------|-------------|--------------|
| default   | moscow-time-app |             | No node port |
|-----------|-----------------|-------------|--------------|
* service default/moscow-time-app has no node port
! Services [default/moscow-time-app] have type "ClusterIP" not meant to be exposed, however for local development minikube allows you to access this !
* Starting tunnel for service moscow-time-app.
|-----------|-----------------|-------------|------------------------|
| NAMESPACE |      NAME       | TARGET PORT |          URL           |
|-----------|-----------------|-------------|------------------------|
| default   | moscow-time-app |             | http://127.0.0.1:65494 |
|-----------|-----------------|-------------|------------------------|
* Opening service default/moscow-time-app in default browser...
```

### View Pods & Services

```shell
kubectl get pods,svc
```

```text
NAME                                   READY   STATUS    RESTARTS   AGE
pod/moscow-time-app-7777f76cff-wdbcc   1/1     Running   0          16m

NAME                      TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)    AGE
service/kubernetes        ClusterIP   10.96.0.1        <none>        443/TCP    41h
service/moscow-time-app   ClusterIP   10.108.100.119   <none>        5000/TCP   16m
```