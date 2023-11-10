# Node.js tabanlı görüntüyü kullan
FROM node:14-slim

# Çalışma dizini oluşturun
WORKDIR /app

# Proje dosyalarını Docker çalışma dizinine kopyalayın
COPY package*.json ./
COPY . .

# Uygulamayı başlatın
CMD ["sh", "-c", "cd logo && npm start"]
