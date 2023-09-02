package com.example.SelfMeal.config;

import com.example.SelfMeal.user.domain.jwt.JwtFilter;
import com.example.SelfMeal.user.domain.jwt.TokenProvider;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.CsrfConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;


import java.util.List;

@Configuration
@RequiredArgsConstructor
@EnableWebSecurity
public class SecurityConfig {
    private final TokenProvider tokenProvider;

    @Bean
    public SecurityFilterChain filterChain(final HttpSecurity http) throws Exception {
        http
                .httpBasic(AbstractHttpConfigurer::disable)
                .csrf(CsrfConfigurer::disable)
                .cors(cors -> { cors.configurationSource (request -> {
                    CorsConfiguration config = new CorsConfiguration();
                    config.setAllowedOrigins(List.of("*"));
                    config.setAllowedMethods(List.of("*"));
                    return config;
                });}).sessionManagement(configurer->configurer.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .authorizeHttpRequests(request->{
                    request.requestMatchers("/user/**").permitAll()
                            .requestMatchers("/diet/**").permitAll()
                            .requestMatchers("/recommend").permitAll()
                            .anyRequest().denyAll();
                })
                .addFilterBefore(new JwtFilter(tokenProvider), UsernamePasswordAuthenticationFilter.class)
                // 에러 핸들링
                .exceptionHandling(exception->{
                    exception.accessDeniedHandler((request,response,accessDeniedException)->{
                        response.setStatus(403);
                        response.setCharacterEncoding("utf-8");
                        response.setContentType("text/html; charset=UTF-8");
                        response.getWriter().write("Invalid role");
                    });
                    exception.authenticationEntryPoint((request,response,authException)->{
                        response.setStatus(401);
                        response.setCharacterEncoding("utf-8");
                        response.setContentType("text/html; charset=UTF-8");
                        response.getWriter().write("Invalid authentication");
                    });})
                .addFilterBefore(new JwtFilter(tokenProvider),UsernamePasswordAuthenticationFilter.class);
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }

}