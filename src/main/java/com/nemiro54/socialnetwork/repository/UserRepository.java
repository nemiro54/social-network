package com.nemiro54.socialnetwork.repository;

import com.nemiro54.socialnetwork.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);
}
