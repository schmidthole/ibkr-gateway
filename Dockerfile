FROM amazoncorretto:latest

WORKDIR /gateway

RUN yum update -y && yum install -y unzip
RUN curl -o clientportal.gw.zip https://download2.interactivebrokers.com/portal/clientportal.gw.zip
RUN unzip clientportal.gw.zip
RUN rm clientportal.gw.zip

EXPOSE 5000

CMD ["sh", "./bin/run.sh", "./root/conf.yaml"]