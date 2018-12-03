package com.web.ldap.config;

import javax.persistence.EntityManager;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

public class SpringSecurityJdbcBasedConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	DataSource dataSource;
	EntityManager entityManager;
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
@Override
protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	auth.jdbcAuthentication().dataSource(dataSource)
		.withDefaultSchema()
		.usersByUsernameQuery("")
		.groupAuthoritiesByUsername("");
	
}
}
