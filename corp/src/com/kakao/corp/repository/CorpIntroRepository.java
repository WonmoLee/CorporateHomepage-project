package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.CorpIntro;

public class CorpIntroRepository {
	private static final String TAG = "CorpintroRepository : ";
	private static CorpIntroRepository instance = new CorpIntroRepository();
	private CorpIntroRepository() {}

	public static CorpIntroRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	//title, content 가져오기
	public CorpIntro intro() {
		final String SQL = "SELECT * FROM CORPINTRO ";
		 CorpIntro corpintroTest = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표 완성
			rs = pstmt.executeQuery();
			corpintroTest = new CorpIntro();

			if(rs.next()) {
				corpintroTest.setTitle(rs.getString("title"));
				corpintroTest.setImg(rs.getString("img"));
				corpintroTest.setContentTitle(rs.getString("contentTitle"));
				corpintroTest.setContent(rs.getString("content"));
			}
			return corpintroTest;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "intro :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return null;
	}

	//회사소개 수정하기
	public int introUpdate(CorpIntro corpintro) {
		final String SQL = "UPDATE CORPINTRO SET TITLE = ?, IMG = ?, CONTENTTITLE = ?, CONTENT = ?";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);

			//물음표 완성하기
			pstmt.setString(1, corpintro.getTitle());
			pstmt.setString(2, corpintro.getImg());
			pstmt.setString(3, corpintro.getContentTitle());
			pstmt.setString(4, corpintro.getContent());

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
