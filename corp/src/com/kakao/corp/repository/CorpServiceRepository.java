package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.CorpService;

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


	//전체 뿌리기
	public List<CorpService> CorpServiceFindByAll() {
		final String SQL = "SELECT * FROM CORPSERVICE ORDER BY CATEGORY";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			List<CorpService> corpServices = new ArrayList<>();

			while (rs.next()) {
				CorpService service = CorpService.builder()
						.name(rs.getString(1))
						.text(rs.getString(2))
						.img(rs.getString(4))
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
	public List<CorpService> findByCategory(String value) {
		final String SQL = "SELECT * FROM CORPSERVICE WHERE CATEGORY = ? ";
		List<CorpService> corpServices = new ArrayList<>();

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표 완성 
			pstmt.setString(1, value);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				CorpService service = CorpService.builder()
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
}