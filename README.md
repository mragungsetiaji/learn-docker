# Introduction 
Learn Docker using Flask

# Build
```
docker build -t gcr.io/kompasiddata/flask:<version> .
```

# Run
```
docker run -p 8080:8080 gcr.io/kompasiddata/flask:<version>
```

# Push 
```
docker push gcr.io/kompasiddata/flask:<version>
```

# Deployment
```
gcloud container clusters get-credentials kmpid-data-dev --zone asia-southeast2-c --project kompasiddata
kubectl apply -f app.yaml
```

