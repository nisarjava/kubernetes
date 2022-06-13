#FROM openjdk:17-ea-5-jdk-alpine as builder
#WORKDIR extracted
#ADD ./target/app.jar app.jar

#RUN java -Djarmode=layertools -jar app.jar extract

FROM openjdk:17-ea-5-jdk-alpine
#WORKDIR application

#COPY --from=builder extracted/dependencies/ ./
#COPY --from=builder extracted/spring-boot-loader/ ./
#COPY --from=builder extracted/snapshot-dependencies/ ./
#COPY --from=builder extracted/application/ ./

EXPOSE 8080
ADD ./target/app.jar app.jar

#ENTRYPOINT ["java","org.springframework.boot.loader.JarLauncher"]
ENTRYPOINT ["java","-jar","app.jar"]
