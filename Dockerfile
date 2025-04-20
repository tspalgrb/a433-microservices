# Menggunakan base image Node.js versi 14
FROM node:14-alpine

# Menentukan working directory di container
WORKDIR /app

# Menyalin file package*.json ke working directory
COPY package*.json ./

# Menginstal dependencies aplikasi
RUN npm install

# Menyalin seluruh source code ke working directory
COPY . .

# Mengekspos port 3001 pada aplikasi
EXPOSE 3001

# Menjalankan server saat container dijalankan
CMD ["npm", "start"]