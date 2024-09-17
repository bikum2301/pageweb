package tdp.test.dao;

import java.util.List;

import tdp.test.models.UserModel;

public interface IUSerDao {
	List<UserModel> findAll();
	
	UserModel findById(int iduser);
	
	UserModel findByUsername(String username);
	
	void insert(UserModel user);
}
