package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.VoiceOfCustBoard;

public class BoardRepository {

		private static final String TAG = "BoardRepository : ";
		private static BoardRepository instance = new BoardRepository();
		private BoardRepository() {}
			public static BoardRepository getInstance() {
			return instance;
		}
		
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
		
		public int vocSave(VoiceOfCustBoard board) {
			final String SQL = "INSERT INTO VOCBOARD(ID, USERID, TITLE, CONTENT, READCOUNT, CREATEDATE) VALUES(BOARD_SEQ.NEXTVAL, ?, ?, ?, ?, SYSDATE)";
	
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				//물음표 완성하기
				pstmt.setInt(1, board.getUserId());
				pstmt.setString(2, board.getTitle());
				pstmt.setString(3, board.getContent());
				pstmt.setInt(4, board.getReadCount());
				return pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println(TAG + "save : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			
			return -1;
			
		}
}