package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.dto.VocReplyResponseDto;
import com.kakao.corp.model.VoiceOfCustReply;

public class ReplyRepository {
	private static final String TAG = "ReplyRepository : ";
	private static ReplyRepository instance = new ReplyRepository();
	private ReplyRepository() {}
	public static ReplyRepository getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public List<VocReplyResponseDto> vocFindAll(int boardId) {
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT R.ID, R.USERID, R.BOARDID, R.CONTENT, R.CREATEDATE, ");
		sb.append("U.USERNAME, U.USERPROFILE ");
		sb.append("FROM VOCREPLY R INNER JOIN USERS U ");
		sb.append("ON R.USERID = U.ID ");
		sb.append("WHERE BOARDID = ? ");
		sb.append("ORDER BY R.ID DESC");
		final String SQL = sb.toString();
		List<VocReplyResponseDto> replyDtos = new ArrayList<>();
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, boardId);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				VoiceOfCustReply vocReply = VoiceOfCustReply.builder()
						.id(rs.getInt(1))
						.userId(rs.getInt(2))
						.boardId(rs.getInt(3))
						.content(rs.getString(4))
						.createDate(rs.getTimestamp(5))
						.build();
				VocReplyResponseDto vocReplyDto = VocReplyResponseDto.builder()
						.vocReply(vocReply)
						.username(rs.getString(6))
						.userProfile(rs.getString(7))
						.build();
				replyDtos.add(vocReplyDto);
			}
			
			return replyDtos;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG+"vocFindAll(boardId) : "+e.getMessage());
		} finally {
			DBConn.close(conn, pstmt, rs);
		}

		return null;
	}
}
