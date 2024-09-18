package tdp.test.services.impl;

import tdp.test.dao.IUSerDao;
import tdp.test.dao.impl.UserDaoImpl;
import tdp.test.models.UserModel;
import tdp.test.services.IUserService;

public class UserService implements IUserService {
	IUSerDao userdao = new UserDaoImpl();

	@Override
	public UserModel login(String username, String password) {
		UserModel user = this.FindByUserName(username);
		if (user != null && password.equals(user.getPassword())) {
			return user;
		}
		return null;
	}

	@Override
	public UserModel FindByUserName(String username) {
		return userdao.findByUsername(username);
	}

	@Override
	public void insert(UserModel user) {
		userdao.insert(user);
	}

	@Override
	public boolean register(String username, String password, String fullname, String email, String phone) {
		if (userdao.checkExistUsername(username)) {
			return false;
		}
		long millis = System.currentTimeMillis();
		java.sql.Date dateU = new java.sql.Date(millis);
		userdao.insert(new UserModel(0, username, password, fullname, email, phone, null, 1, dateU));
		return true;
	}

	@Override
	public boolean checkExistEmail(String email) {
		return userdao.checkExistEmail(email);
	}

	@Override
	public boolean checkExistUsername(String username) {
		return userdao.checkExistUsername(username);
	}

	@Override
	public boolean checkExistPhone(String phone) {
		return userdao.checkExistPhone(phone);
	}

}
