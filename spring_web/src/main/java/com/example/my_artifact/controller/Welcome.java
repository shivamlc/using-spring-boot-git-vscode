package com.example.my_artifact.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;



@RestController
@RequestMapping("/api/welcome")
public class Welcome {

    @GetMapping("/")
    public String getMethodName() {
        return "Welcome to the Spring Boot Application! Developed in github vscode using Codespaces.";
    }
    
}
