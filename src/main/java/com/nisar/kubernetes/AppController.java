package com.nisar.kubernetes;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController(value = "Messages")
public class AppController {
    @GetMapping("/getMessage")
    public String getMessage(){
        return "Hello World";
    }
}
