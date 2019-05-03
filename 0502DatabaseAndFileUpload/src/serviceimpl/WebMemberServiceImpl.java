package serviceimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.mindrot.jbcrypt.BCrypt;

import domain.WebMember;
import service.WebMemberDAO;
import service.WebMemberService;
import util.ShareInstance;

//비즈니스 로직 처리를 위한 메소드를 구현한 클래스
public class WebMemberServiceImpl implements WebMemberService {
		//자기 자신의 참조를 넘기기 위한 변수
		private static WebMemberService webMemberService;
		//데이터베이스 연결 변수
		private Connection con;
		//DAO 참조 변수
		private WebMemberDAO webMemberDAO;
		
		
		private WebMemberServiceImpl() {
			//데이터베이스 연결 변수 가져오기
			con = ShareInstance.getInstance().con;
			webMemberDAO = WebMemberDAOImpl.getInstance();
		}
		
		public static WebMemberService getInstance() {
			if(webMemberService == null) {
				webMemberService = new WebMemberServiceImpl();
			}
			return webMemberService;
		}

		@Override
		public JSONObject idcheck(HttpServletRequest request) {
			JSONObject jsonObject = null;
			//파라미터 읽기
			String id = request.getParameter("id");
			
			//DAO 메소드 호출
			String result = webMemberDAO.idcheck(id);
			
			jsonObject = new JSONObject();
			//result가 null이면 중복이 아니고 null이 아니면 중복
			if(result == null) {
				jsonObject.put("result", "success");
			}else {
				jsonObject.put("result", "fail");
						
			}
			
			return jsonObject;
		}

		@Override
		public JSONObject nicknamecheck(HttpServletRequest request) {
			JSONObject jsonObject = null;
			//파라미터 읽기
			String nickname = request.getParameter("nickname");
			
			//DAO 메소드 호출
			String result = webMemberDAO.nicknameCheck(nickname);
			
			jsonObject = new JSONObject();
			//result가 null이면 중복이 아니고 null이 아니면 중복
			if(result == null) {
				jsonObject.put("result", "success");
			}else {
				jsonObject.put("result", "fail");
						
			}
			
			return jsonObject;
		}

		

		@Override
		public int insertUser(HttpServletRequest request) {
			System.out.println("회원가입 서비스 요청");
			int result = -1;
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String nickname = request.getParameter("nickname");
			String email = request.getParameter("email");
					
			WebMember webMember = new WebMember();
			webMember.setId(id);
			//비밀번호를 그대로저장
			//webMember.setPw(pw);
			
			//비밀번호를 암호화해서 저장
			webMember.setPw(BCrypt.hashpw(pw, BCrypt.gensalt(10)));
			webMember.setNickname(nickname);
			webMember.setEmail(email);
			
			System.out.println("파라미터:" + webMember);
			
			result = webMemberDAO.insertUser(webMember);
			
			//Commit 과 Rollback Database 작업이지만 
			//DAO 에서 하는 것이 아니 Service에서 수행
			//하나의 거래 Service가 처리하기 때문입니다.
			
			try {
				con.commit();
			}catch(Exception e) {
				System.out.println("삽입 완료:" + e.getMessage());
				e.printStackTrace();
			}
			return result;
		}

		@Override
		public WebMember login(HttpServletRequest request) {
			WebMember webMember = null;
			
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			//DAO 메소드 호출
			webMember = webMemberDAO.login(id.toUpperCase().trim());
			if(webMember != null) {
				//로그인 성공 - 암호화 된 비밀번호와 일치하는지 확인
				if(BCrypt.checkpw(pw, webMember.getPw())) {
					//비밀번호는 저장할 필요가 없기 때문에 삭제
					webMember.setPw(null);
				}else {
					webMember = null;
				}
			}
			//로그인에 성공하면 세션에 id 와 그 이외 필요한 정보를 저장
			//로그인 된 경우 session에 webMember에 데이터가 저장
			//로그인 안된 경우는 session에 webMember가 null
			request.getSession().setAttribute("webMember", webMember);
			return webMember;
		}

}
