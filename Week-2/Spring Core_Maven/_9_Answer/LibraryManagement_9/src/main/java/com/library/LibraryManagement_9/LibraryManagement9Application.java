package com.library.LibraryManagement_9;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EnableJpaRepositories(basePackages = "com.library.LibraryManagement_9.repository")
@EntityScan(basePackages = "com.library.LibraryManagement_9.model")
@ComponentScan(basePackages = "com.library.LibraryManagement_9")
public class LibraryManagement9Application {
    public static void main(String[] args) {
        SpringApplication.run(LibraryManagement9Application.class, args);
    }
}
