FROM openjdk:17

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 1121

ENTRYPOINT ["java", "-jar", "app.jar"]
