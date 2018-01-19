package com.sample.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.sample.vo.User;

public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSessionTemplate template;
	
	@Override
	public void addUser(User user) {
		template.insert("addUser", user);
	}

	@Override
	public List<User> getUserByUsername(String username) {
		return template.selectList("getUserByUsername", username);
	}

	@Override
	public User getUserByNo(int no) {
		return template.selectOne("getUserByNo", no);
	}

	@Override
	public List<String> getRolesByNo(int no) {
		return template.selectList("getRolesByNo", no);
	}

}
