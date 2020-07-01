package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.dto.VocBoardResponseDto;
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
		
		public int vocSave(VoiceOfCustBoard vocBoard) {
			final String SQL = "INSERT INTO VOCBOARD(ID, USERID, TITLE, CONTENT, READCOUNT, CREATEDATE) VALUES(VOCBOARD_SEQ.NEXTVAL, ?, ?, ?, ?, SYSDATE)";
	
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				//물음표 완성하기
				pstmt.setInt(1, vocBoard.getUserId());
				pstmt.setString(2, vocBoard.getTitle());
				pstmt.setString(3, vocBoard.getContent());
				pstmt.setInt(4, vocBoard.getReadCount());
				return pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println(TAG + "vocSave : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			
			return -1;
			
		}
		
		public List<VoiceOfCustBoard> vocFindAll(int page) {
			StringBuilder sb = new StringBuilder();
			sb.append("SELECT /*+ INDEX_DESC(BOARD SYS_C008824)*/ID, ");
			sb.append("USERID, TITLE, CONTENT, READCOUNT, CREATEDATE ");
			sb.append("FROM VOCBOARD ");
			sb.append("ORDER BY CREATEDATE DESC ");
			sb.append("OFFSET ? ROWS FETCH NEXT 7 ROWS ONLY");
			final String SQL = sb.toString();
			List<VoiceOfCustBoard> vocBoards = new ArrayList<>();

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, page*7);
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
				System.out.println(TAG + "vocFindAll : " + e.getMessage());
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
		
		public int updateReadCount(int id) {
			final String SQL = "UPDATE VOCBOARD SET READCOUNT = READCOUNT + 1 WHERE ID = ?";

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				// 물음표 완성하기

				pstmt.setInt(1, id);
				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG+"updateReadCount : "+e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}

			return -1;
		}
		
		public VocBoardResponseDto vocFindById(int id) {
			StringBuilder sb = new StringBuilder();
			sb.append("SELECT B.ID, B.USERID, B.TITLE, B.CONTENT, B.READCOUNT, B.CREATEDATE, U.USERNAME ");
			sb.append("FROM VOCBOARD B INNER JOIN USERS U ");
			sb.append("ON B.USERID = U.ID ");
			sb.append("WHERE B.ID = ?");
			final String SQL = sb.toString();
			VocBoardResponseDto vocBoardDto = null;
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				//물음표 완성하기
				pstmt.setInt(1, id);
				rs = pstmt.executeQuery();
				//if 돌려서 rs -> java오브젝트에 집어넣기
				if(rs.next()) {
					vocBoardDto = new VocBoardResponseDto();
					VoiceOfCustBoard vocBoard = VoiceOfCustBoard.builder()
							.id(rs.getInt(1))
							.userId(rs.getInt(2))
							.title(rs.getString(3))
							.content(rs.getString(4))
							.readCount(rs.getInt(5))
							.createDate(rs.getTimestamp(6))
							.build();
					vocBoardDto.setVocBoard(vocBoard);
					vocBoardDto.setUsername(rs.getString(7));
				}
				return vocBoardDto;
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println(TAG + "vocFindById : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			return null;
		}
		
		public int vocDeleteById(int id) {
			final String SQL = "DELETE FROM VOCBOARD WHERE ID = ?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				//물음표 완성하기
				pstmt.setInt(1, id);
				return pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println(TAG + "vocDelete : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			
			return -1;
		}
		
		public int vocPostUpdate(VoiceOfCustBoard vocBoard) {
			final String SQL = "UPDATE VOCBOARD SET TITLE = ?, CONTENT = ? WHERE ID = ?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setString(1, vocBoard.getTitle());
				pstmt.setString(2, vocBoard.getContent());
				pstmt.setInt(3, vocBoard.getId());
				return pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println(TAG + "vocPostUpdate : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			
			
			return -1;
		}
}