package com.itis.Bagels2;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan("com.itis.Bagels2.model")
public class Bagels2Application {

	public static void main(String[] args) {
		SpringApplication.run(Bagels2Application.class, args);
	}

}
