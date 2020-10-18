FROM openjdk:8-jdk-alpine
ADD target/spring-mysql-redis-cache-0.0.1-SNAPSHOT.jar  spring-mysql-redis-cache.jar
ENTRYPOINT ["java", "-jar", "/spring-mysql-redis-cache.jar"]
EXPOSE 8080

