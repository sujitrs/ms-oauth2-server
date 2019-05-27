# oauth2 AuthZ Server
#FROM openjdk:8-jdk-alpine
#VOLUME /tmp
#ARG DEPENDENCY=target/dependency
#COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
#COPY ${DEPENDENCY}/META-INF /app/META-INF
#COPY ${DEPENDENCY}/BOOT-INF/classes /app
#ENTRYPOINT ["java","-cp","app:app/lib/*"]
##CMD ["-Dserver.port=8888","-Djdbc.pass=ENC(sTU0WwEA45K/jHxcswowpRxE0xU2h4Vv)","-Djdbc.url=jdbc:postgresql://localhost:5434/ ","-Deureka.client.serviceUrl.defaultZone=http://localhost:8761/eureka/","org.sj.msoauth2server.MsOauth2ServerApplication"]
#CMD ["-Djdbc.pass=ENC(sTU0WwEA45K/jHxcswowpRxE0xU2h4Vv)","-Djdbc.url=jdbc:postgresql://localhost:5434/ ","org.sj.msoauth2server.MsOauth2ServerApplication"]
## -Djdbc.pass=ENC(sTU0WwEA45K/jHxcswowpRxE0xU2h4Vv) -Djdbc.url=jdbc:postgresql://localhost:5434/

#######For Google Cloud
FROM openjdk:8-jdk-alpine
ADD build/libs/ms-oauth2-server.jar ms-oauth2-server.jar
ENTRYPOINT ["java","-jar","ms-oauth2-server.jar"]
#CMD ["-Dserver.port=8888","-Djdbc.pass=ENC(sTU0WwEA45K/jHxcswowpRxE0xU2h4Vv)","-Djdbc.url=jdbc:postgresql://localhost:5434/ ","-Deureka.client.serviceUrl.defaultZone=http://localhost:8761/eureka/","org.sj.msoauth2server.MsOauth2ServerApplication"]
CMD ["-Djdbc.pass=ENC(sTU0WwEA45K/jHxcswowpRxE0xU2h4Vv)","-Djdbc.url=jdbc:postgresql://localhost:5434/ ","org.sj.msoauth2server.MsOauth2ServerApplication"]
 