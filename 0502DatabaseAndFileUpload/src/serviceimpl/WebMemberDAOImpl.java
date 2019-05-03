package serviceimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import domain.WebMember;
import service.WebMemberDAO;
import util.ShareInstance;

//데이터베이스 로직을 처리하는 메소드가 구현된 클래스 - Repository
public class WebMemberDAOImpl implements WebMemberDAO {
	//자기 자신의 참조를 넘기기 위한 변수
	private static WebMemberDAO webMemberDAO;
	//데이터베이스 연결 변수
	private Connection con;
	//SQL 실행 변수 - 프레임워크 를 이용할 때는 필요 없음
	private PreparedStatement pstmt;
	
	private WebMemberDAOImpl() {
		//데이터베이스 연결 변수 가져오기
		con = ShareInstance.getInstance().con;
	}
	
	public static WebMemberDAO getInstance() {
		if(webMemberDAO == null) {
			webMemberDAO = new WebMemberDAOImpl();
		}
		return webMemberDAO;
	}

	@Override
	public String idcheck(String id) {
		String result = null;
		try{
			pstmt = 
				con.prepareStatement(
						"select id from webmember where upper(trim(id))=?");
			pstmt.setString(1,  id.toUpperCase().trim());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getString("id");
			}
			rs.close();
			
		}catch(Exception e) {
			System.out.println("id 중복 검사 예외:" + e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			}catch(Exception e) {}
		}
		return result;
	}

	@Override
	public String nicknameCheck(String nickname) {
		String result = null;
		try{
			pstmt = 
				con.prepareStatement(
						"select nickname from webmember where upper(trim(nickname))=?");
			pstmt.setString(1,  nickname.toUpperCase().trim());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getString("nickname");
			}
			rs.close();
			
		}catch(Exception e) {
			System.out.println("nickname 중복 검사 예외:" + e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			}catch(Exception e) {}
		}
		return result;
	}

	

	@Override
	public int insertUser(WebMember webMember) {
		
		System.out.println("DAO호출");
		int result = -1;
		try {
			pstmt =
					con.prepareStatement(
							"insert into webmember "
							+ "values(?,?,?,?)");
			pstmt.setString(1, webMember.getId().toUpperCase().trim());
			pstmt.setString(2, webMember.getPw());
			pstmt.setString(3, webMember.getNickname().toUpperCase().trim());
			pstmt.setString(4, webMember.getEmail());
			result = pstmt.executeUpdate();
			System.out.println("DAO 삽입 결과:" + result);
			
		}catch(Exception e) {
			System.out.println("회원가입:" + e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			}catch(Exception e) {}
		}
		return result;
	}

	@Override
	public WebMember login(String id) {
		WebMember webMember = null;
		
		try {
			pstmt = con.prepareStatement(
					"select * from webmember where id = ?");
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				webMember = new WebMember();
				webMember.setId(rs.getString("id"));
				webMember.setPw(rs.getString("pw"));
				webMember.setNickname(rs.getString("nickname"));
				webMember.setEmail(rs.getString("email"));
			}
		}catch(Exception e) {
			System.out.println("로그인 예외:" + e.getMessage());
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			}catch(Exception e) {}
		}	
		return webMember;
	}
}
