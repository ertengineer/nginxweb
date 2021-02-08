FROM nginx

RUN apt-get update -y && apt-get install -y curl 
WORKDIR /usr/share/nginx/html/
COPY index.html .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

