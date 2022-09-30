FROM python:3.6-alpine

LABEL creator.name="Romain Chenard"
LABEL creator.email="rom.chenard@gmail.com"

RUN apk update \
  && apk add curl gnupg \
  && pip install flask==1.1.2 

ADD . /opt
WORKDIR /opt

EXPOSE 8080

ENTRYPOINT ["python","app.py"]

# docker build -t myapp .
# docker run -d -e ODOO_URL=https://www.odoo.com/ -e PGADMIN_URL=https://www.pgadmin.org/ --name myapp -p 8080:8080 myapp