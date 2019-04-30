package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface PlayerService {
	//리턴 타입은 일반적으로 DAO 와 동일
	//데이터 여러 개를 가져오는 경우는 List
	//한 개를 가져오는 경우는 Wrapper class 또는 String, Date
	//Map 또 DTO
	//삽입, 갱싱, 수정일 때는 int 또 boolean
	
	//매개변수는 HttpServletRequest 1개 또는 HttpServletResponse 2개
	//클라이언트의 요청이 발생했을 때 전달되는 파라미터를 읽어야 하기 때문에
	public List<String> getPlayer(HttpServletRequest request);
	
}
