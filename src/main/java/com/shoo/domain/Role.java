package com.shoo.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import com.shoo.domain.User;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "roles")
public class Role implements Serializable {

	@NotNull
    private String rolename;
    @ManyToMany(mappedBy = "roles")
    private List<User> users;

}
