package com.kakao.corp.repository;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;

	import com.kakao.corp.db.DBConn;
	import com.kakao.corp.model.CorpIntro;
import com.kakao.corp.model.CorpSocial;

	public class CorpSocialRepository {
		private static final String TAG = "SocailRepository : "; 
		private static CorpSocialRepository instance = new CorpSocialRepository();
		private CorpSocialRepository() {}

		public static CorpSocialRepository getInstance() {
			return instance;
		}

		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null; 
		
		//사진변경 안할때
		public int socialTextUpdate(CorpSocial corpSocial, String type) {
			final String SQL = "UPDATE CORPSOCIAL SET TITLE = ?, CONTENT = ? WHERE type = ?";

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);

				//물음표 완성하기
				pstmt.setString(1, corpSocial.getTitle());
				pstmt.setString(2, corpSocial.getContent());
				pstmt.setString(3, type);

				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "socialTextUpdate : " + e.getMessage());
			}finally {
				DBConn.close(conn, pstmt, rs);
			}
			return -1;
		}

		
		
		// 수정 
		public int socialUpdate(CorpSocial corpSocial, String type) {
			final String SQL = "UPDATE CORPSOCIAL SET TITLE = ?, IMG = ?, CONTENT = ? WHERE type = ?";

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);

				//물음표 완성하기
				pstmt.setString(1, corpSocial.getTitle());
				pstmt.setString(2, corpSocial.getImg());
				pstmt.setString(3, corpSocial.getContent());
				pstmt.setString(4, type);

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
		public CorpSocial social() {
			final String SQL = "SELECT * FROM CORPSOCIAL WHERE TYPE = 'SOCIAL1' ";
			CorpSocial corpSocial = null;

			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);

				rs = pstmt.executeQuery();
				corpSocial = new CorpSocial();

				if(rs.next()) {
					corpSocial.setTitle(rs.getString("title"));
					corpSocial.setContent(rs.getString("content"));
					corpSocial.setImg(rs.getString("img"));
				}

				return corpSocial;

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "sosial :" + e.getMessage());
			}finally {
				DBConn.close(conn, pstmt);
			}
			return null;
		}

		//소셜임팩트2 <카카오메이커스>
			public CorpSocial social2() {
				final String SQL = "SELECT * FROM CORPSOCIAL WHERE TYPE = 'SOCIAL2' ";
				CorpSocial corpSocial = null;

				try {
					conn = DBConn.getConnection();
					pstmt = conn.prepareStatement(SQL);

					rs = pstmt.executeQuery();
					corpSocial = new CorpSocial();

					if(rs.next()) {
						corpSocial.setTitle(rs.getString("title"));
						corpSocial.setContent(rs.getString("content"));
						corpSocial.setImg(rs.getString("img"));
					}

					return corpSocial;

				} catch (Exception e) {
					e.printStackTrace();
					System.out.println(TAG + "sosial :" + e.getMessage());
				}finally {
					DBConn.close(conn, pstmt);
				}
				return null;
			}
	}
