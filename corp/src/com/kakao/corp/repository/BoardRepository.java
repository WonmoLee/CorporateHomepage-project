package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
	
	//게시글 등록
	public int VOCSave(VoiceOfCustBoard voiceOfCustBoard) {
		final String SQL = "INSERT INTO board(id, userid, title, content, createDate) "
							+ "VALUES(board_seq.nextval, ?, ?, ?, sysdate) ";
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			//물음표 완성하기
			pstmt.setInt(1, voiceOfCustBoard.getUserId());
			pstmt.setString(2, voiceOfCustBoard.getTitle());
			pstmt.setString(3, voiceOfCustBoard.getContent());
			
			return pstmt.executeUpdate();
					
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "save : " + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
				return -1;
	}
	
	//게시글 수정
	public int VOCUpdate(VoiceOfCustBoard voiceOfCustBoard) {
		final String SQL = "UPDATE board SET title = ?, content = ? WHERE id = ? ";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			//물음표 완성하기
			pstmt.setString(1, voiceOfCustBoard.getTitle());
			pstmt.setString(2, voiceOfCustBoard.getContent());
			pstmt.setInt(3, voiceOfCustBoard.getId());
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "VOCUpdate" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1;
	}
	
	//게시글 삭제
	public int VOCDelete(int id) {
		final String SQL = "DELETE FROM board WHERE id = ? ";
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			//물음표 완성하기
			pstmt.setInt(1, id);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "VOCDelete : " + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return -1;
	}

	
}
