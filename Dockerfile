# Node.js tabanlı görüntüyü kullan
FROM node:14-slim

# Çalışma dizini oluşturun
WORKDIR /app

# Proje dosyalarını Docker çalışma dizinine kopyalayın
RUN npm install
RUN npx create-react-app logo

# Uygulamayı başlatın
CMD ["sh", "-c", "cd logo && npm start"]
