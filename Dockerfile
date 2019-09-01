FROM openjdk:8-jre-alpine
ENV APP_ROOT=/root/servicestage/spdemo/
ENV LOG_ROOT=/var/log/authz/
RUN mkdir -p $APP_ROOT
RUN mkdir -p $LOG_ROOT

COPY target/authz-1.0/authz-1.0 $APP_ROOT


RUN cd $APP_ROOT && chmod -R 770 .
RUN chmod +x /root/servicestage/spdemo/bin/start.sh

ENTRYPOINT ["sh", "/root/servicestage/spdemo/bin/start.sh"]
