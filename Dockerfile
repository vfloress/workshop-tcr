FROM gradle:7.5.0-jdk17-alpine as builder
USER root
WORKDIR /builder
ADD . /builder
RUN gradle build --no-daemon

FROM openjdk:17-alpine
WORKDIR /app
COPY --from=builder /builder/build/libs/workshop-tcr-0.0.1.jar .
CMD ["java", "-jar", "workshop-tcr-0.0.1.jar"]
