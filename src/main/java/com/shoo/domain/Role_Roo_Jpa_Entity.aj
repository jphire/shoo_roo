// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.shoo.domain;

import com.shoo.domain.Role;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Role_Roo_Jpa_Entity {
    
    declare @type: Role: @Entity;
    
    declare @type: Role: @Table(name = "roles");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Role.id;
    
    @Version
    @Column(name = "version")
    private Integer Role.version;
    
    public Long Role.getId() {
        return this.id;
    }
    
    public void Role.setId(Long id) {
        this.id = id;
    }
    
    public Integer Role.getVersion() {
        return this.version;
    }
    
    public void Role.setVersion(Integer version) {
        this.version = version;
    }
    
}
