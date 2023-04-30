# Use uma imagem Node.js como base
FROM node:latest

# Crie um diretório de trabalho
WORKDIR /app

# Copie o package.json e o package-lock.json para o contêiner
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie todos os arquivos do projeto para o contêiner
COPY . .

# Expor a porta da API
EXPOSE 3000

# Compile o projeto React
RUN npm run build


# Define o comando de inicialização do aplicativo
CMD [ "npm", "start" ]
