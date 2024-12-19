package com.nhom5.aloute.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CustomSiteMeshFilter extends ConfigurableSiteMeshFilter
{
    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder)
    {
        // Assigning default decorator if no path specific decorator found
        builder.addDecoratorPath("/login", "login.jsp")
                .addDecoratorPath("/home", "home.jsp")
                .addDecoratorPath("edit", "home.jsp")
                .addDecoratorPath("/**", "home.jsp")
                .addDecoratorPath("/profile", "home.jsp")
                .addDecoratorPath("/register", "login.jsp")
                ;

    }

    @Bean
    public FilterRegistrationBean<CustomSiteMeshFilter> siteMeshFilter()
    {
        FilterRegistrationBean<CustomSiteMeshFilter> filterRegistrationBean = new FilterRegistrationBean<CustomSiteMeshFilter>();
        filterRegistrationBean.setFilter(new CustomSiteMeshFilter()); // adding sitemesh filter ??
        filterRegistrationBean.addUrlPatterns("/*");
        return filterRegistrationBean;
    }
}
