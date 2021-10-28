FROM adoptopenjdk/openjdk11:x86_64-alpine-jre-11.0.12_7
ARG SPRING_GROUP=spring
ARG SPRING_USERNAME=spring
RUN addgroup -S ${SPRING_GROUP} && adduser -S ${SPRING_USERNAME} -G ${SPRING_GROUP}
USER ${SPRING_USERNAME}
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
EXPOSE 8080
ENTRYPOINT ["java", "-cp", "app:app/lib/*", "ru.otus.redestroyder.kubernetesminimalservice.KubernetesMinimalServiceApplication"]
