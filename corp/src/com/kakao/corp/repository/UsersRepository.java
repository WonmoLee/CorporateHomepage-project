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
	
	
	//유저 업데이트 
		public int update(Users user) {
			final String SQL = "UPDATE users SET password = ?, email = ?, userBirth = ?, address = ? WHERE id = ? ";

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				//물음표
				pstmt.setString(1, user.getPassword());
				pstmt.setString(2, user.getEmail());
				pstmt.setString(3, user.getUserBirth());
				pstmt.setString(4, user.getAddress());
				pstmt.setInt(5, user.getId());
				
				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG +"update" + e.getMessage());
			}finally {
				DBConn.close(conn, pstmt, rs);
			}
			return -1;
		}
		

		//로그인 
		public Users login(String username, String password) {
			final String SQL = "SELECT id, username, email, address, userProfile, userRole, userBirth, createDate"
					+ " FROM users WHERE username = ? AND password = ?";
			Users user = null;
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				//물음표
				pstmt.setString(1, username);		
				pstmt.setString(2, password);
				
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					user = new Users();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setEmail(rs.getString("email"));
					user.setAddress(rs.getString("userProfile"));
					user.setUserProfile("userProfile");
					user.setUserRole(rs.getString("userRole"));
					user.setUserBirth(rs.getString("userBirth"));
					user.setCreateDate(rs.getTimestamp("createDate"));
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "login" + e.getMessage());
			}finally {
				DBConn.close(conn, pstmt, rs);
			}
			return user;
		}
	
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
