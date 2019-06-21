package com.securityoauthlib.domain;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
@Data
public class Role implements GrantedAuthority {

    @Id
    private String id;

    private String name;

    private String description;

    @Override
    public String getAuthority() {
        return name;
    }

}
