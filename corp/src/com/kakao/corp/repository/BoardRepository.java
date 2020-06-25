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
	
	public VoiceOfCustBoard findById(int id) {
		final String SQL = "SELECT * FROM BOARD WHERE ID = ?";
		VoiceOfCustBoard boards = null;
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			//while 돌려서 rs -> java오브젝트에 집어넣기
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				 boards = new VoiceOfCustBoard(
						rs.getInt("id"),
						rs.getInt("userid"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getInt("readCount"),
						rs.getTimestamp("createDate")
				);
			}
			return boards;
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "findAll : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		
		
		return null;
	}

	public List<VoiceOfCustBoard> findAll() {
		final String SQL = "SELECT * FROM BOARD ORDER BY ID DESC";
		List<VoiceOfCustBoard> boards = new ArrayList<>();
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			
			//while 돌려서 rs -> java오브젝트에 집어넣기
			rs = pstmt.executeQuery();
			while(rs.next()) {
				VoiceOfCustBoard board = new VoiceOfCustBoard(
						rs.getInt("id"),
						rs.getInt("userid"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getInt("readCount"),
						rs.getTimestamp("createDate")
				);
				boards.add(board);
			}
			return boards;
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println(TAG + "findAll : " + e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}
		
		
		return null;
	}
	
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
