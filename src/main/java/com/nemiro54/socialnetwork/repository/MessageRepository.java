package com.nemiro54.socialnetwork.repository;

import com.nemiro54.socialnetwork.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepository extends CrudRepository<Message, Integer> {
}
