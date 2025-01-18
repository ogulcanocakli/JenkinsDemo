# Temel imaj olarak Node.js kullan
FROM node:14

# Çalışma dizinini ayarla
WORKDIR /usr/src/app

# package.json ve package-lock.json dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Uygulama kaynak kodunu kopyala
COPY . .

# Uygulamanın çalışacağı portu belirt
EXPOSE 3000

# Uygulamayı başlat
CMD ["npm", "start"]
