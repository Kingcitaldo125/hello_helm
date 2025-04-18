# Hello, Helm!

"Hello, World" example application done with Kubernetes, Helm, and ExpressJS.
This serves as a "hello, world" style of application regarding the aforementioned tech stack.

## Building/Installing

Build the image with Docker by running `docker build -t hello-helm:latest .`.
You may then proceed to load the image into your cluster's container registry.
e.g. `sudo k3s ctr i import hello-helm:latest`

Afterwards, install the associated helm chart by running `helm install hello-helm helm/`

You can verify that the pod has come up by running `kubectl get pod`.

You should see something similar to the following:

```
NAME                     READY   STATUS    RESTARTS   AGE
hello-7cd6955f88-bdlzk   1/1     Running   0          3m54s
```

You can `curl` the service by first retrieving the service's IP address: `kubectl get svc`.

You should see something similar to the following:

```
NAME         TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
kubernetes   ClusterIP   10.43.0.1       <none>        443/TCP          131m
hello        NodePort    <service_ip>    <none>        8080:30633/TCP   5m23s
```

You can then curl the cluster-ip of the `hello` service by running `<service_ip>:8080`.
