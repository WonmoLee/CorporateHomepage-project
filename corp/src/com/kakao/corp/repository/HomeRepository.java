package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.CorpSocial;
import com.kakao.corp.model.HomeText;

public class HomeRepository {
	private static final String TAG = "HomeRepository : "; 
	private static HomeRepository instance = new HomeRepository();
	private HomeRepository() {}

	public static HomeRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null; 
	
	//첫번째 homeText
	public HomeText homeText(int id) {
		final String SQL = "SELECT title, content, img FROM homeText WHERE id = ? ";
		HomeText homeText = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			
			homeText = new HomeText();

			if(rs.next()) {
				homeText.setTitle(rs.getString("title"));
				homeText.setContent(rs.getString("content"));
				homeText.setImg(rs.getString("img"));
			}

			return homeText;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "homeText1 :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return null;
	}
	
	
	
	// 수정하기
	public int homeUpdate(HomeText homeText, int id) {
		final String SQL = "UPDATE HOMETEXT SET TITLE = ?, IMG = ?, CONTENT = ? WHERE id = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);

			//물음표 완성하기
			pstmt.setString(1, homeText.getTitle());
			pstmt.setString(2, homeText.getImg());
			pstmt.setString(3, homeText.getContent());
			pstmt.setInt(4, id);

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "homeUpdate" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1;
	}
	
	//사진변경 안할때
	public int homeTextUpdate(HomeText homeText, int id) {
		final String SQL = "UPDATE HOMETEXT SET TITLE = ?, CONTENT = ? WHERE id = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);

			//물음표 완성하기
			pstmt.setString(1, homeText.getTitle());
			pstmt.setString(2, homeText.getContent());
			pstmt.setInt(3, id);

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "homeTextUpdate : " + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1;
	}
}
