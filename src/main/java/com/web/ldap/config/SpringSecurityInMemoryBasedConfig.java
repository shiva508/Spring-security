package com.web.ldap.config;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(securedEnabled=true)
public class SpringSecurityInMemoryBasedConfig extends WebSecurityConfigurerAdapter{
@Override
protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	/*UserBuilder userBuilder=User.withDefaultPasswordEncoder();*/
	auth.inMemoryAuthentication().passwordEncoder(NoOpPasswordEncoder.getInstance())
	.withUser("user").password("user").roles("USER")
	.and()
	.withUser("admin").password("admin").roles("ADMIN");
}
@Override
	protected void configure(HttpSecurity http) throws Exception {
	http.authorizeRequests().antMatchers("/login").access("hasRole('ADMIN')")
	.and().formLogin()
	.loginPage("/").
	permitAll();
	/*.anyRequest().authenticated().and().httpBasic();*/
	}
}
