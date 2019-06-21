package com.securityoauthlib.dao;

import com.securityoauthlib.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface UserRepository extends JpaRepository<User,String> {

    User findByUsername(String username);
}
