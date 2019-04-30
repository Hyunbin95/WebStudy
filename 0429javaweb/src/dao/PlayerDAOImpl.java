package dao;

import java.util.ArrayList;
import java.util.List;

public class PlayerDAOImpl implements PlayerDAO {
	//싱글톤 패턴을 위한 코드
	private static PlayerDAO playerDAO = null;
	private PlayerDAOImpl() {}
	
	public static PlayerDAO getInstance() {
		if(playerDAO == null) {
			playerDAO = new PlayerDAOImpl();
		}
		return playerDAO;
	}
	
	
	@Override
	public List<String> getPlayer() {
		List<String> list = new ArrayList<>();
		
		list.add("로버트 다우니 주니어");
		list.add("크리스 햄스워스");
		list.add("크리스 에반스");
		list.add("스칼렛 요한슨");
		list.add("마크 러팔로");
		
		return list;
	}

}
