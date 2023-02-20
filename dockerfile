FROM eclipse-temurin:17-jdk-jammy

RUN apt-get update && \
    apt-get install -y git && \
    apt-get install -y maven

RUN mkdir -p /app

COPY . /app

WORKDIR /app

CMD mvn package && java -jar /app/target/petclinic-3.0.jar
