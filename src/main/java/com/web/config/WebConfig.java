package com.web.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Registers AdminLoginInterceptor so it runs on every admin-only URL.
 * "/admin/login" is excluded, otherwise nobody could ever reach the login
 * page itself.
 */
@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new AdminLoginInterceptor())
                .addPathPatterns(
                        "/admin-dashboard",
                        "/admin/**",
                        "/deleteAccount",
                        "/findAccount"
                )
                .excludePathPatterns(
                        "/admin/login"
                );
    }
}
