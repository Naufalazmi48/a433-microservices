# Menetapkan node sebagai base image dalam container
FROM node:14.21-alpine as builder
# Menetapkan path /app sebagai working directory container
WORKDIR /app
# Menyalin package.json ke dalam /app
COPY package*.json ./
# Menjalankan perintah untuk instalasi package atau library yang digunakan
RUN npm install
# Menyalin semua file yang ada di projek ini ke dalam working directory container
COPY . .
# Menetapkan port ke 3001
EXPOSE 3001
# Menjalankan perintah npm run start
CMD [ "npm", "run", "start" ]