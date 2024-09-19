package tdp.test.dao;

import java.util.List;

import tdp.test.models.UserModel;

public interface IUSerDao {
	List<UserModel> findAll();

	UserModel findById(int iduser);

	UserModel findByUsername(String username);

	void insert(UserModel user);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);
	
	void changePass(String password, String email);
}
