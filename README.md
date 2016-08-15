# About

This project is an nginx instance backed with basic auth, proxying requests to the target upstream.

## Usage

```
docker build -t bacongobbler/nginx-upstream .
docker run -d -e UPSTREAM_HOST=192.168.0.16 -e UPSTREAM_PORT=5000 -p 5001:80 bacongobbler/nginx-upstream
curl -u admin:hunter2 localhost:5001
```
