package tdp.test.services;

import tdp.test.models.UserModel;

public interface IUserService {
	UserModel login(String username, String password);
	
	UserModel FindByUserName(String username);
	
	UserModel register(String username, String password, String fullname, String email, String phone);
}
