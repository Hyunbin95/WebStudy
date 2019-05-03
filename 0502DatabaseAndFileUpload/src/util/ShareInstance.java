package util;

import java.sql.Connection;

//공유 변수를 소유한 클래스
public class ShareInstance {
	private ShareInstance() {}
	
	private static ShareInstance shareInstance;
	
	public static ShareInstance getInstance() {
		if(shareInstance == null) {
			shareInstance = new ShareInstance();
		}
		return shareInstance;
	}
	
	//데이터베이스 연결 변수
	public Connection con;
}
