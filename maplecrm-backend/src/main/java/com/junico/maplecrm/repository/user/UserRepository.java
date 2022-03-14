package com.junico.maplecrm.repository.user;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.junico.maplecrm.model.users.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>, UserRepositoryCustom {

	Optional<User> findByEmail(String email);

	Boolean existsByEmail(String email);

	@Query("SELECT e FROM User e WHERE e.name LIKE %:name%")
	List<User> filterUsers(@Param("name") String name);

}
