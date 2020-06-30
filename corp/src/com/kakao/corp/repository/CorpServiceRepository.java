package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.CorpServiceContent;
import com.kakao.corp.model.CorpServiceTitle;

public class CorpServiceRepository {
	private static final String TAG = "CorpServiceRepository : ";
	private static CorpServiceRepository instance = new CorpServiceRepository();
	private CorpServiceRepository() {}

	public static CorpServiceRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	
	public CorpServiceTitle CorpServiceTitleFindByAll() {
		final String SQL = "SELECT * FROM CORPSERVICETITLE";
		CorpServiceTitle corpServiceTitle = null;

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			corpServiceTitle = new CorpServiceTitle();

			if (rs.next()) {
				corpServiceTitle.setImg(rs.getString("img"));
				corpServiceTitle.setTitle(rs.getString("title"));
				corpServiceTitle.setContent(rs.getString("content"));
			}
			return corpServiceTitle;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "CorpServiceTitleFindByAll :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return null;
	}
	
	//전체 뿌리기
	public List<CorpServiceContent> CorpServiceFindByAll() {
		final String SQL = "SELECT ID, NAME, TEXT, CATEGORY, IMG FROM CORPSERVICECONTENT ORDER BY CATEGORY";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			List<CorpServiceContent> corpServices = new ArrayList<>();

			while (rs.next()) {
				CorpServiceContent service = CorpServiceContent.builder()
						.id(rs.getInt(1))
						.name(rs.getString(2))
						.text(rs.getString(3))
						.category(rs.getString(4))
						.img(rs.getString(5))
						.build();
				corpServices.add(service);
			}
			return corpServices;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "CorpServiceFindByAll :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return null;
	}



	//카테고리별
	public List<CorpServiceContent> findByCategory(String value) {
		final String SQL = "SELECT * FROM CORPSERVICECONTENT WHERE CATEGORY = ? ";
		List<CorpServiceContent> corpServices = new ArrayList<>();

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표 완성 
			pstmt.setString(1, value);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				CorpServiceContent service = CorpServiceContent.builder()
						.name(rs.getString(1))
						.text(rs.getString(2))
						.img(rs.getString(4))
						.build();
				corpServices.add(service);
			}
			return corpServices;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findByCategory :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}
	
	public int serviceUpdate1(CorpServiceTitle corpServiceTitle) {
			final String SQL1 = "UPDATE CORPSERVICETITLE SET IMG = ?, TITLE = ?, CONTENT = ?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL1);

				//물음표 완성하기
				pstmt.setString(1, corpServiceTitle.getImg());
				pstmt.setString(2, corpServiceTitle.getTitle());
				pstmt.setString(3, corpServiceTitle.getContent());

				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "serviceUpdate" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			return -1;
	}
		
	public int serviceUpdate2(CorpServiceContent corpServiceContent) {
			final String SQL = "UPDATE CORPSERVICECONTENT SET NAME = ?, TEXT = ?, CATEGORY = ?, IMG = ? WHERE ID = ?";
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
		
				//물음표 완성하기
				pstmt.setString(1, corpServiceContent.getName());
				pstmt.setString(2, corpServiceContent.getText());
				pstmt.setString(3, corpServiceContent.getCategory());
				pstmt.setString(4, corpServiceContent.getImg());
				pstmt.setInt(5, corpServiceContent.getId());
		
				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "serviceUpdate" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			return -1;
		}
}