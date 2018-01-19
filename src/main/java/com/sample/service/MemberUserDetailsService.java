package com.sample.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.sample.dao.UserDAO;
import com.sample.vo.User;

public class MemberUserDetailsService implements UserDetailsService {

	UserDAO userDAO;
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		List<User> userList = userDAO.getUserByUsername(username);
		
		if(userList.isEmpty()) {
			throw new UsernameNotFoundException("사용자를 찾을 수 없습니다.");
		}
		
		User user = userList.get(0);
		List<String> roleList = userDAO.getRolesByNo(user.getNo());
		user.setRoles(roleList);
		
		return new UserUserDetails(user);
	}

}
