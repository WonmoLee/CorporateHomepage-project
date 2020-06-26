package com.kakao.corp.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.kakao.corp.db.DBConn;
import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.model.Service;

public class ServiceRepository {
	private static final String TAG = "ServiceRepository : ";
	private static ServiceRepository instance = new ServiceRepository();
	private ServiceRepository() {}

	public static ServiceRepository getInstance() {
		return instance;
	}

	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	
	//전체 뿌리기
	public List<Service> findByAll() {
		final String SQL = "SELECT * FROM service ORDER BY category ";

		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			
			List<Service> services = new ArrayList<>();

			while (rs.next()) {
				Service service = Service.builder()
						.name(rs.getString(1))
						.text(rs.getString(2))
						.img(rs.getString(4))
						.build();
				services.add(service);
			}
			return services;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findbyAll :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt);
		}
		return null;
	}
	
	
	
	//카테고리별
	public List<Service> findByCategory(String value) {
		final String SQL = "SELECT * FROM service WHERE category = ? ";
		List<Service> services = new ArrayList<>();
		
		try {
			conn = DBConn.getConnection();
			pstmt = conn.prepareStatement(SQL);
			//물음표 완성 
			pstmt.setString(1, value);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				Service service = Service.builder()
						.name(rs.getString(1))
						.text(rs.getString(2))
						.img(rs.getString(4))
						.build();
				services.add(service);
			}
			return services;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(TAG + "findByCategory :" + e.getMessage());
		}finally {
			DBConn.close(conn, pstmt, rs);
		}
		return null;
	}
}
