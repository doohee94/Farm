package farm.main.dao;

import farm.dto.ownerDTO;
import farm.dto.userDTO;

public interface MainDAO {

	//농사꾼 회원가입
	public int insertUser(userDTO userDTO);
	//농장주 회원가입
	public int insertOwner(ownerDTO ownerDTO);
	//농사꾼 로그인
	public String loginUser(String user_id, String user_pass);
	//농장주 로그인
	public String loginOwner(String user_id, String user_pass);
}
