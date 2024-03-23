## builder
FROM node:18-alpine as builder

WORKDIR /usr/src/app

COPY package*.json .
RUN npm ci --production

ARG REACT_APP_VERSION=1.0.0
ENV REACT_APP_VERSION=${REACT_APP_VERSION}

COPY . .
RUN npm run build

## runner
FROM nginx:alpine

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

