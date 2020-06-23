package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.Users;

public class UsersRepository {
	private static final String TAG = "UsersRepository : ";
	private static UsersRepository instance = new UsersRepository();
	private UsersRepository() {}
	
	public static UsersRepository getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	
	//아이디 중복체크 
	public int findUsername(String username) {
		final String SQL = "SELECT count(*) FROM users WHERE username = ?";
		Users user = null;
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표
			pstmt.setString(1, username);		
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				return rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findUsername" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1;
	}
	
	//회원가입
	public int save(Users user) {
		final String SQL = "INSERT INTO USERS(id, username, password, email, address, userRole, userBirth, createDate)"
						+"VALUES(users_seq.nextval,?,?,?,?,?,?,sysdate)";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표 완성
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getAddress());
			pstmt.setString(5, user.getUserRole());
			pstmt.setString(6, user.getUserBirth());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "save :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return -1;
	}
	
	
}
