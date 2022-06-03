package com.kyndryl.sample.dockersample.resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest/docker/hello")
public class HelloKyndryl {
	
	@GetMapping
	public String hello() {
		return "Welcome to Kyndryl This resposne from docker container!!!";
	}

}
