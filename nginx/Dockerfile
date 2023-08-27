FROM nginx:alpine
RUN apk add --no-cache bash
WORKDIR /nginx

RUN chown nginx:root /nginx

USER root

# Remove the default configuration file
RUN rm /etc/nginx/conf.d/default.conf

COPY ./conf/nginx.conf /etc/nginx/site-available/mysite.conf
COPY ./conf/nginx.conf /etc/nginx/site-enabled/mysite.conf


 #CMD ["nginx", "-c", "/nginx/conf/nginx.conf"]
