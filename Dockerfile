# Usar la imagen oficial de Node.js como base
FROM node:16

# Crear y establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de package.json y package-lock.json
COPY package*.json ./

# Instalar las dependencias de Node.js
RUN npm install

# Copiar todo el contenido del proyecto en el contenedor
COPY . .

# Exponer el puerto que la aplicación utilizará
EXPOSE 4000

# Ejecutar el servidor
CMD ["node", "server.js"]
