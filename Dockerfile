FROM node:8-alpine
EXPOSE 3030
ENV PORT=3030
ENV BACKEND_URL=10.0.3.57:3000
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
#averiguar si copia los archivos asl docjkerfile para poder correr el run y el cmd
RUN npm install
CMD ["npm", "start"]
