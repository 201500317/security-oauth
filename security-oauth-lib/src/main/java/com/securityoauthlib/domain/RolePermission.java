package com.securityoauthlib.domain;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "role_permission")
@Data
@Entity
public class RolePermission {

    @Id
    private String id;

    private String roleid;

    private String perid;
}
