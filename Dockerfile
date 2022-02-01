FROM alpine:3.13.5
RUN apk add openjdk8
WORKDIR /opt
RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.75/bin/apache-tomcat-8.5.75.tar.gz
RUN mv apache-tomcat-8.5.75 tomcat8
EXPOSE 8080
WORKDIR /opt/tomcat8/webapps
COPY --from=build /home/app/target/*.war myweb.war
CMD ["/opt/tomcat8/bin/catalina.sh","run"]
