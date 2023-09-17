FROM eclipse-temurin:11-jdk-alpine
ADD target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
