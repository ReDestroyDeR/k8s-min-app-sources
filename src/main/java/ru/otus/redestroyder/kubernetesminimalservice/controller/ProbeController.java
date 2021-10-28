package ru.otus.redestroyder.kubernetesminimalservice.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

import java.util.Map;

@RestController
public class ProbeController {
    @GetMapping("/health")
    public Mono<ResponseEntity<Map<String, String>>> healthProbe() {
        return Mono.just(ResponseEntity.ok(Map.of("status", "ok")));
    }

}
