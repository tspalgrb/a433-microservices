#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs-ui:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs-ui:latest ghcr.io/$USERNAME/karsajobs-ui:latest

# Login ke GitHub Packages
echo $PAT_GITHUB_PACKAGES | docker login ghcr.io -u $USERNAME --password-stdin

# Mengupload image ke GitHub Packages
docker push ghcr.io/$USERNAME/karsajobs-ui:latest