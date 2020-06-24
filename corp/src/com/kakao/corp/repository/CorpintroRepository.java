package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.Corpintro;

public class CorpintroRepository {
	private static final String TAG = "CorpintroRepository : ";
	private static CorpintroRepository instance = new CorpintroRepository();
	private CorpintroRepository() {}
	
	public static CorpintroRepository getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	//title, content 가져오기
	public Corpintro intro() {
		final String SQL = "SELECT * FROM test ";
		 Corpintro corpintroTest = null;
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표 완성
			rs = pstmt.executeQuery();
			corpintroTest = new Corpintro();
			
			if(rs.next()) {
				corpintroTest.setTitle(rs.getString("title"));
				corpintroTest.setContent(rs.getString("content"));
			}
			return corpintroTest;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "save :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return null;
	}
	
	//회사소개 수정하기
	public int introUpdate(Corpintro corpintro) {
		final String SQL = "UPDATE test SET title = ?, content = ?";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			//물음표 완성하기
			pstmt.setString(1, corpintro.getTitle());
			pstmt.setString(2, corpintro.getContent());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "introUpdate" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1;
	}
	
}
