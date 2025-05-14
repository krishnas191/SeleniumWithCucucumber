FROM maven:3.9.6-eclipse-temurin-21

VOLUME /root/.m2

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN mvn clean install

CMD ["mvn", "test"]
