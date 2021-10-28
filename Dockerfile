FROM adoptopenjdk:11-jdk-hotspot
ARG SPRING_GROUP=spring
ARG SPRING_USERNAME=spring
ARG SPRING_GROUP_UID=1001
ARG SPRING_USER_UID=1001
RUN groupadd -g ${SPRING_GROUP_UID} ${SPRING_GROUP} && useradd -u ${SPRING_USER_UID} -g ${SPRING_GROUP_UID} -s /bin/sh ${SPRING_USERNAME}
USER ${SPRING_USERNAME}:${SPRING_GROUP}
ARG DEPENDENCY=target/dependency
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
EXPOSE 8080
ENTRYPOINT ["java", "-cp", "app:app/lib/*", "ru.otus.redestroyder.kubernetesminimalservice.KubernetesMinimalServiceApplication"]
