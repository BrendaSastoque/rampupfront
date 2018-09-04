FROM node:8-alpine
EXPOSE 3030
ENV PORT=3030
ENV BACKEND_URL=10.0.3.57:3000
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY movie-analyst-ui /usr/src/app/
RUN npm install
CMD ["npm", "start"]
