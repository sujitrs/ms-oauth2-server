package org.sj.msoauth2server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.ulisesbocchio.jasyptspringboot.annotation.EnableEncryptableProperties;

@SpringBootApplication
@EnableEncryptableProperties
public class MsOauth2ServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(MsOauth2ServerApplication.class, args);
	}

}
