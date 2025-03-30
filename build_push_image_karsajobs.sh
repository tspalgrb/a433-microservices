#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t karsajobs:latest .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag karsajobs:latest ghcr.io/$USERNAME/karsajobs:latest

# Login ke GitHub Packages
echo $PAT_GITHUB_PACKAGES | docker login ghcr.io -u $USERNAME --password-stdin

# Mengupload/push image ke GitHub Packages
docker push ghcr.io/$USERNAME/karsajobs:latest
