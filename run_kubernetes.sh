#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=game123/mlapi

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run game123-mlapi --image=game123/mlapi --port=80 --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward game123-mlapi-5ccbf9bc8-sxbrb 8000:80
