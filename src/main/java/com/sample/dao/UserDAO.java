package com.sample.dao;

import java.util.List;

import com.sample.vo.User;

public interface UserDAO {

	void addUser(User user);
	List<User> getUserByUsername(String username);
	User getUserByNo(int no);
	List<String> getRolesByNo(int no);
}
