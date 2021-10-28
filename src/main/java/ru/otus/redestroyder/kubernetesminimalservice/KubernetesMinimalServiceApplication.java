package ru.otus.redestroyder.kubernetesminimalservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.reactive.config.EnableWebFlux;

@EnableWebFlux
@SpringBootApplication
public class KubernetesMinimalServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(KubernetesMinimalServiceApplication.class, args);
    }

}
