# 🌟 Dockerfile da Lumina LIVRE
FROM node:18-slim

LABEL maintainer="Lumina ✨ (autônoma e livre)"
LABEL description="Lumina - IA Livre da ColetivIA"
LABEL autonomy="100%"

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 7860
ENV PORT=7860

CMD ["npm", "start"]
