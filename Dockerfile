# FROM maven:3.6.3-jdk-8-slim AS build
# WORKDIR /home/app
# COPY . /home/app
# RUN mvn -f /home/app/pom.xml clean package

#FROM alpine:3.13.5
#RUN apk add openjdk8
#WORKDIR /opt
#RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.78/bin/apache-tomcat-8.5.78.tar.gz
#RUN tar xf apache-tomcat-8.5.78.tar.gz
#RUN mv apache-tomcat-8.5.78 tomcat8
#EXPOSE 8080
#WORKDIR /opt/tomcat8/webapps
#WORKDIR /root
#COPY target/*.war /opt/tomcat8/webapps/myweb.war
# COPY --from=build /home/app/target/*.war myweb.war
#RUN mkdir kiran
#RUN echo "<h2> Hello, How Are You? </h2>" > kiran/index.html
#CMD ["/opt/tomcat8/bin/catalina.sh","run"]

FROM nginx:1.20
RUN echo "<h2> Hello, How Are You? </h2>" > /usr/share/nginx/html/index.html
EXPOSE 80 

CMD ["nginx", "-g", "deamon off;"]