FROM nginx:latest

COPY ./sites-available/ /etc/nginx/sites-available/
COPY ./sites-enabled/   /etc/nginx/sites-enabled/
COPY ./init.sh   /init.sh

CMD [ "/bin/sh",  "/init.sh" ]
