#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t shipping-service:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag shipping-service:latest ghcr.io/$USERNAME/shipping-service:latest

# Login ke GitHub Packages
echo $PAT_GITHUB_PACKAGES | docker login ghcr.io -u $USERNAME --password-stdin

# Mengupload image ke GitHub Packages
docker push ghcr.io/$USERNAME/shipping-service:latest