FROM openjdk:8-jre-alpine
RUN maven clean
RUN maven install
ADD target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
