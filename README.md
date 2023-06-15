# Devopsday 2023 jenkins pipline

There is the Kube template.
The source code is [here](https://github.com/a95818rw/express_devopsday).

## Startup

```bash
helm install --debug . --name-template express
```

Set the `ingress` address to the /etc/hosts file.
web url: http://express.example.com/

With minikube

```bash
minikube tunnel
```
