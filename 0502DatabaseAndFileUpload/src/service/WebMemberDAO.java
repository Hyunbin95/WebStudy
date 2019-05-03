package service;

import domain.WebMember;

//데이터베이스 연동작업을 위한 인터페이스
public interface WebMemberDAO {
	//id 중복 검사를 위한 메소드
	//id를 매개변수로 받아서 데이터가 있는지 확인해서 그 결과를 리턴
	//null 이면 id가 존재하지 않는 것이고 null이 아니면 존재
	public String idcheck(String id);
	
	//nickname 중복 검사를 위한 메소드
	public String nicknameCheck(String nickname);
	
	//회원가입을 처리하는 메소드
	public int insertUser(WebMember webMember);
	
	//로그인을 처리하기 위한 메소드
	public WebMember login(String id);

}
