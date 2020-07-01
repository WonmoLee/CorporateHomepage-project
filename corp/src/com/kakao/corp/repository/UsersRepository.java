package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

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
	
	//유저 프로필 업데이트
		public int profileUpdate(int id, String userProfile) {
			final String SQL = "UPDATE users SET userProfile =? WHERE id = ?";

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);

				pstmt.setString(1, userProfile);
				pstmt.setInt(2, id);

				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "profileUpdate" + e.getMessage());
			}finally {
				DBConn.close(conn, pstmt, rs);
			}
			return -1;
		}
		//아이디값
		public Users findById(int id) {
			final String SQL = "SELECT * FROM USERS WHERE ID = ?";
			Users user = new Users();
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				// 물음표 완성하기
				pstmt.setInt(1, id);

				rs = pstmt.executeQuery();

				// if 돌려서 rs -> java오브젝트에 집어넣기
				if (rs.next()) {
					user = Users.builder()
							.id(rs.getInt("id"))
							.username(rs.getString("username"))
							.carrier(rs.getString("carrier"))
							.phoneNumber(rs.getString("phoneNumber"))
							.email(rs.getString("email"))
							.userBirth("userBirth")
							.userProfile(rs.getString("userProfile"))
							.userRole(rs.getString("userRole"))
							.createDate(rs.getTimestamp("createDate"))
							.build();
				}
				return user;
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG+"findById : "+e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}

			return null;
		}
		
		public Users findByUsername(String username) {
			final String SQL = "SELECT * FROM USERS WHERE USERNAME = ?";
			Users user = null;

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				// 물음표 완성하기
				pstmt.setString(1, username);
				// if 돌려서 rs -> java오브젝트에 집어넣기
				rs = pstmt.executeQuery();
				if(rs.next()) {
					
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					String date = sdf.format(rs.getTimestamp("userBirth"));
					
					
					user = new Users();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setCarrier(rs.getString("carrier"));
					user.setPhoneNumber(rs.getString("phoneNumber"));
					user.setUserBirth(date);
					user.setEmail(rs.getString("email"));
					user.setAddress(rs.getString("address"));
					user.setUserProfile(rs.getString("userProfile"));
					user.setUserRole(rs.getString("userRole"));
					user.setCreateDate(rs.getTimestamp("createDate"));

					return user;
				}

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG+"findByUsername : "+e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}

			return null;
		}

	
	
	//유저 업데이트 
		public int update(Users user) {
			final String SQL = "UPDATE USERS SET PASSWORD = ?, CARRIER = ?, PHONENUMBER = ?, EMAIL = ?, USERBIRTH = ?, "
					+ "ADDRESS = ? WHERE ID = ?";

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				//물음표
				pstmt.setString(1, user.getPassword());
				pstmt.setString(2, user.getCarrier());
				pstmt.setString(3, user.getPhoneNumber());
				pstmt.setString(4, user.getEmail());
				pstmt.setString(5, user.getUserBirth());
				pstmt.setString(6, user.getAddress());
				pstmt.setInt(7, user.getId());
				
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
			final String SQL = "SELECT ID, USERNAME, EMAIL, ADDRESS, USERPROFILE, USERROLE, USERBIRTH, CREATEDATE, PHONENUMBER, CARRIER "
					+ "FROM USERS WHERE USERNAME = ? AND PASSWORD = ?";
			Users user = null;
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				//물음표
				pstmt.setString(1, username);		
				pstmt.setString(2, password);
				
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					String date = sdf.format(rs.getTimestamp("userBirth"));
					
					user = new Users();
					user.setId(rs.getInt("id"));
					user.setUsername(rs.getString("username"));
					user.setCarrier(rs.getString("carrier"));
					user.setPhoneNumber(rs.getString("phoneNumber"));
					user.setEmail(rs.getString("email"));
					user.setAddress(rs.getString("address"));
					user.setUserProfile(rs.getString("userProfile"));
					user.setUserRole(rs.getString("userRole"));
					user.setUserBirth(date);
					user.setCreateDate(rs.getTimestamp("createDate"));
				}
				return user;
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "login" + e.getMessage());
			}finally {
				DBConn.close(conn, pstmt, rs);
			}
			return null;
		}
	
	//아이디 중복체크 
	public int findUsername(String username) {
		final String SQL = "SELECT count(*) FROM users WHERE username = ?";
		
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
		final String SQL = "INSERT INTO USERS(ID, USERNAME, PASSWORD, CARRIER, PHONENUMBER, EMAIL, ADDRESS, USERROLE, USERBIRTH, CREATEDATE)"
						+"VALUES(USERS_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,SYSDATE)";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표 완성
			pstmt.setString(1, user.getUsername());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getCarrier());
			pstmt.setString(4, user.getPhoneNumber());
			pstmt.setString(5, user.getEmail());
			pstmt.setString(6, user.getAddress());
			pstmt.setString(7, user.getUserRole());
			pstmt.setString(8, user.getUserBirth());
			
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
