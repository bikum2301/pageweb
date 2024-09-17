package tdp.test.services.impl;

import tdp.test.dao.IUSerDao;
import tdp.test.dao.impl.UserDaoImpl;
import tdp.test.models.UserModel;
import tdp.test.services.IUserService;

public class UserService implements IUserService{
	IUSerDao userdao = new UserDaoImpl();
	@Override
	public UserModel login(String username, String password) {
		UserModel user = this.FindByUserName(username);
		if (user != null && password.equals(user.getPassword()) ) {
			return user;
		}
		return null;
	}

	@Override
	public UserModel FindByUserName(String username) {
		return userdao.findByUsername(username);
	}

	@Override
	public UserModel register(String username, String password, String fullname, String email, String phone) {
		// TODO Auto-generated method stub
		return null;
	}

}
