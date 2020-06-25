package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
		
		public List<VoiceOfCustBoard> findAll() {
			final String SQL = "SELECT * FROM VOCBOARD ORDER BY ID DESC";
			List<VoiceOfCustBoard> vocBoards = new ArrayList<>();
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				//while 돌려서 rs -> java오브젝트에 집어넣기
				rs = pstmt.executeQuery();
				while(rs.next()) {
					VoiceOfCustBoard vocBoard = new VoiceOfCustBoard(
							rs.getInt("id"),
							rs.getInt("userid"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getInt("readCount"),
							rs.getTimestamp("createDate")
					);
					vocBoards.add(vocBoard);
				}
				return vocBoards;
				
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println(TAG + "findAll : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return null;
		}
		
		public int count() {
			final String SQL = "SELECT COUNT(*) FROM VOCBOARD";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return rs.getInt(1);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG+"count : "+e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}

			return -1;
		}
}