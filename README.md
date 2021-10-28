### OTUS 《Microservice Architecture》 Homework № 1
These are source files for Kubernetes service which:
* Has Healthcheck (/health) probe
* Has Endpoint (/otusapp/{student name}) which Greets the Student

Written in Java using Spring WebFlux<br>
By default service responds on port 8080 but it will be reconfigured when deploying to k8s<br>
This repository also has <code>batch</code> and <code>shell</code> scripts for building Docker images out of the source files

If you want to build Docker image from these sources you must install <code>Apache Maven</code> and at least `JDK 11`<br>

You can pull prebuilt docker images using `docker pull redestroyder/k8s_minimal_app`

[Docker Hub page](https://hub.docker.com/r/redestroyder/k8s_minimal_app)