package com.shshilan.repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import com.shshilan.entity.User;

public interface UserDao extends PagingAndSortingRepository<User, Long> {
	User findByLoginName(String loginName);
}
