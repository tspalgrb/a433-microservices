# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di container
WORKDIR /app

# Menyalin seluruh source code ke working directory
COPY . .

# Menentukan environment variable untuk production mode dan database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080 pada aplikasi
EXPOSE 8080

# Menjalankan server saat container dijalankan
CMD ["npm", "start"]