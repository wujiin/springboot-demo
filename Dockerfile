FROM java:8-jre
MAINTAINER Simon <979762929@qq.com>

ADD ./target/springboot-demo-1.0.jar /app/
CMD ["java", "-Xmx200m", "-jar", "/app/springboot-demo-1.0.jar"]

EXPOSE 8888
