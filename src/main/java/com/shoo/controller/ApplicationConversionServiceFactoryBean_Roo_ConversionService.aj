// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.shoo.controller;

import com.shoo.controller.ApplicationConversionServiceFactoryBean;
import com.shoo.domain.Role;
import com.shoo.domain.User;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    public Converter<Role, String> ApplicationConversionServiceFactoryBean.getRoleToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.shoo.domain.Role, java.lang.String>() {
            public String convert(Role role) {
                return new StringBuilder().append(role.getRolename()).toString();
            }
        };
    }
    
    public Converter<Long, Role> ApplicationConversionServiceFactoryBean.getIdToRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.shoo.domain.Role>() {
            public com.shoo.domain.Role convert(java.lang.Long id) {
                return Role.findRole(id);
            }
        };
    }
    
    public Converter<String, Role> ApplicationConversionServiceFactoryBean.getStringToRoleConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.shoo.domain.Role>() {
            public com.shoo.domain.Role convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Role.class);
            }
        };
    }
    
    public Converter<User, String> ApplicationConversionServiceFactoryBean.getUserToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.shoo.domain.User, java.lang.String>() {
            public String convert(User user) {
                return new StringBuilder().append(user.getUsername()).append(" ").append(user.getPassword()).toString();
            }
        };
    }
    
    public Converter<Long, User> ApplicationConversionServiceFactoryBean.getIdToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.Long, com.shoo.domain.User>() {
            public com.shoo.domain.User convert(java.lang.Long id) {
                return User.findUser(id);
            }
        };
    }
    
    public Converter<String, User> ApplicationConversionServiceFactoryBean.getStringToUserConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.shoo.domain.User>() {
            public com.shoo.domain.User convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), User.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getRoleToStringConverter());
        registry.addConverter(getIdToRoleConverter());
        registry.addConverter(getStringToRoleConverter());
        registry.addConverter(getUserToStringConverter());
        registry.addConverter(getIdToUserConverter());
        registry.addConverter(getStringToUserConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}