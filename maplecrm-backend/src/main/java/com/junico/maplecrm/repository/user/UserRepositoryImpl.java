package com.junico.maplecrm.repository.user;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;

import com.junico.maplecrm.model.users.User;
import com.nimbusds.oauth2.sdk.util.StringUtils;

public class UserRepositoryImpl implements UserRepositoryCustom {

	@Autowired
	private UserRepository userRepository;

	@Override
	public List<User> search(String filter) {
		return userRepository.filterUsers(filter);
	}

}
