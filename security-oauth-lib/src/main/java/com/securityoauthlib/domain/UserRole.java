package com.securityoauthlib.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "user_role")
@Data
@Entity
public class UserRole {

    @Id
    private String id;

    private String userid;

    private String roleid;
}
