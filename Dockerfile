FROM python:buster

COPY ./key ./key

RUN     apt-get -y update &&\
        apt-get -y upgrade &&\
        apt-get -y install mariadb-client

RUN     apt-get install wget &&\
        wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy &&\
        chmod +x cloud_sql_proxy

RUN     mkdir /cloudsql &&\
        chmod 777 /cloudsql

ENTRYPOINT ["bash"]
