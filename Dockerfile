FROM node:8-alpine
EXPOSE 3030
#Poner una carpeta sobre la cual se vaya a hacer el RUN y el CMD
RUN npm install
CMD ["npm", "start"]
