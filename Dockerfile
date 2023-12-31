FROM node:18
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
EXPOSE 3080
CMD [ "node", "dist/main.js" ]