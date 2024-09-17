package tdp.test.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import tdp.test.configs.DBConnetcMySQL;
import tdp.test.dao.IUSerDao;
import tdp.test.models.UserModel;

public class UserDaoImpl extends DBConnetcMySQL implements IUSerDao {

	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	@Override
	public List<UserModel> findAll() {
		String sql = "SELECT * FROM pageuser";
		List<UserModel> list = new ArrayList<UserModel>();
		try {
			conn = super.getDatabaseConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new UserModel(rs.getInt("iduser"), rs.getString("username"), rs.getString("password"),
						rs.getString("fullname"), rs.getString("avartar"), rs.getString("email"), rs.getString("phone"),
						rs.getInt("roleid"), rs.getDate("date")));
				return list;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserModel findById(int iduser) {
		String sql = "SELECT * FROM pageuser WHERE iduser = ? ";
		try {
			conn = super.getDatabaseConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, iduser);
			rs = ps.executeQuery();
			while (rs.next()) {
				UserModel user = new UserModel();
				user.setIduser(rs.getInt("iduser"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setFullname(rs.getString("fullname"));
				user.setAvartar(rs.getString("avartar"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setRoleid(Integer.parseInt(rs.getString("roleid")));
				user.setCreatDate(rs.getDate("date"));
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserModel findByUsername(String username) {
		String sql = "SELECT * FROM pageuser WHERE username = ? ";
		try {
			conn = super.getDatabaseConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			while (rs.next()) {
				UserModel user = new UserModel();
				user.setIduser(rs.getInt("iduser"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setFullname(rs.getString("fullname"));
				user.setAvartar(rs.getString("avartar"));
				user.setEmail(rs.getString("email"));
				user.setPhone(rs.getString("phone"));
				user.setRoleid(Integer.parseInt(rs.getString("roleid")));
				user.setCreatDate(rs.getDate("date"));
				return user;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void insert(UserModel user) {

	}

	public static void main(String[] args) {
		try {
			IUSerDao userDao = new UserDaoImpl();
			System.out.println(userDao.findAll());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
