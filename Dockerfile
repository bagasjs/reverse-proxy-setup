FROM nginx:latest

COPY ./sites-available/ /etc/nginx/sites-available/
COPY ./sites-enabled/   /etc/nginx/sites-enabled/

CMD [ "/bin/sh",  "init.sh" ]
