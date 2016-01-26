package org.khmeracademy.app.services;

import org.khmeracademy.app.entities.User;

public interface UserService {
	
	public User findUserByEmail(String email);

}
