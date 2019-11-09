package com.sapient.spring.boot;

import java.util.Arrays;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JavaCliApplication implements CommandLineRunner{
	
	private static Logger logger=LoggerFactory.getLogger(JavaCliApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(JavaCliApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		
		Arrays.asList(args).forEach(logger::error);
	}
}
