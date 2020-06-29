package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.CorpIntro;

public class SocailRepository {
	private static final String TAG = "SocailRepository : "; 
	private static SocailRepository instance = new SocailRepository();
	private SocailRepository() {}
	
	public static SocailRepository getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null; 
	
	public int socialUpdate(CorpIntro corpintro) {
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
	
	//소셜임팩트1 <카카오같이가치>
	public CorpIntro social() {
		final String SQL = "SELECT * FROM test WHERE type = 'social' ";
		 CorpIntro corpintroTest = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			rs = pstmt.executeQuery();
			corpintroTest = new CorpIntro();

			if(rs.next()) {
				corpintroTest.setTitle(rs.getString("title"));
				corpintroTest.setContent(rs.getString("content"));
			}
			
			return corpintroTest;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "sosial :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return null;
	}
	
	//소셜임팩트2 <카카오메이커스>
		public CorpIntro social2() {
			final String SQL = "SELECT * FROM test WHERE type = 'social2' ";
			 CorpIntro corpintroTest = null;

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				rs = pstmt.executeQuery();
				corpintroTest = new CorpIntro();

				if(rs.next()) {
					corpintroTest.setTitle(rs.getString("title"));
					corpintroTest.setContent(rs.getString("content"));
				}
				
				return corpintroTest;
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "sosial :" + e.getMessage());
			}finally {
				DBConn.close(conn, pstmt);
			}
			return null;
		}
}
