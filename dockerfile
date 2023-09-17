FROM openjdk:8-jre-alpine
RUN mvn clean
RUN mvn install
ADD target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
