#!/bin/bash

# Build Docker image dari Dockerfile
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/tspalgrb/item-app:v1

# Login ke GitHub Packages
echo $PAT_GITHUB_PACKAGES | docker login ghcr.io -u tspalgrb --password-stdin

# Mengupload image ke GitHub Packages
docker push ghcr.io/tspalgrb/item-app:v1