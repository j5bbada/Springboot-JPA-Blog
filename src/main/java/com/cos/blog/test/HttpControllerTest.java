package com.cos.blog.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HttpControllerTest {

    @GetMapping("/http/test")
    public String getTest(@RequestParam int id) {
        System.out.println("getter test ");
        return "test get 요청: " + id;
    }

    @GetMapping("/http/get")
    public String getTest(Member m) {
        return "get 요청: " + m.getId() + ", " +m.getUsername()+ ", " +m.getPassword()+ ", " +m.getEmail();
    }


}
