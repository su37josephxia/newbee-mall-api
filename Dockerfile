FROM maven:3.8.5-openjdk-11
ADD ./settings.xml /root/.m2/
ADD . /usr/src/app
WORKDIR /usr/src/app
RUN ["mvn","clean","package"]
CMD mvn spring-boot:run