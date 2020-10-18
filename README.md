# spring-mysql-redis-cache
Spring Boot Mysql Redis  REST API Cache example

## 
### Prerequisites
- JDK 1.8
- Maven
- H2  or Mysql
- Redis

## Quick Start

### Clone source
```
git clone https://github.com/jeonguk/spring-mysql-redis-cache.git
cd spring-mysql-redis-cache

```

```
* Dev mode
H2 Embedded
```

```
* Production
MySQL START
```

```
Redis START
```

### Build
```
mvn clean install  -Dmaven.test.skip=true
```

### Run with java -jar
```
java -jar target/spring-mysql-redis-cache.jar
```

### Run with Docker
```
docker ps
docker-compose exec mysql bash
docker stop idcontainerxxx
docker-compose build
docker-compose up
docker-compose down

```

##
### Get information about system health, configurations, etc.
```
http://localhost:8091/env
http://localhost:8091/health
http://localhost:8091/info
http://localhost:8091/metrics
```

##
### TEST using CURL

- data add
```
curl -d '{"title":"post title", "content":"post content"}' -H "Content-Type: application/json" -X POST http://localhost:8080/api/posts
```

- data get cache TimeUnit.SECONDS 10
```
curl http://localhost:8080/api/posts/1
```

##
### Swagger-ui REST API Reference & Test
- http://localhost:8080/swagger-ui.html
- Response Content Type : application/json

##
### Redis monitor
- https://redis.io/commands/monitor
