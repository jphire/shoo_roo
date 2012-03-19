package com.shoo.domain;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

import com.shoo.domain.Role;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "users", finders = { "findUsersByUsernameEquals" })
public class User {

    @NotNull
    private String username;

    @NotNull
    private String password;

    @ManyToMany(cascade = CascadeType.ALL)
    private List<Role> roles = new ArrayList<Role>();
}
