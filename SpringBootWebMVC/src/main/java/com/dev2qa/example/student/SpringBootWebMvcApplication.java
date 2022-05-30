package com.dev2qa.example.student;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
/* @SpringBootApplication consists of @Configuration, @ComponentScan and @EnableAutoConfiguration.
 * This annotation enable component scan and auto configuration. */
@SpringBootApplication
/*
@Configuration
@ComponentScan(basePackages = {"com.dev2qa.example"})
@EnableAutoConfiguration
*/
public class SpringBootWebMvcApplication {
    public static void main(String[] args) {
      /* Responsible for launching the boot application. */
        SpringApplication.run(SpringBootWebMvcApplication.class, args);
    }
}
