FROM openjdk:21

WORKDIR /app

COPY target/*.war app.war

EXPOSE 1121

ENTRYPOINT ["java", "-jar", "app.war"]
