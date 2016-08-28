FROM nginx

RUN mkdir /wwwroot

COPY nginx.conf /etc/nginx/nginx.conf
COPY static/bundle.js /wwwroot/static/bundle.js
COPY static/index.html /wwwroot/index.html

CMD ["nginx", "-g", "daemon off;"]
