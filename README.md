# Provide virtctl binary inside cluster for disconnected use-case

This repo shows how to provide `virtctl` to users with ConsoleCliDownloads objects and a simple httpd server.

## Build & Deploy

```
bash deploy.sh
```

## Demo

Open the OpenShift web ui. Click `?` button in the right-top menu. Go to `Command line tools`.

You will observe this section and you will be able download `virtctl` by clicking the links.
![OpenShiftWebUI](OpenShiftWebUI.png)

