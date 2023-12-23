FROM node:16.14.0-stretch as builder

WORKDIR /app
COPY *.json ./
RUN npm install
COPY . .
RUN NODE_ENV=production VUE_APP_API_URL=http://backend:8081 npm run build

FROM nginx:stable-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
