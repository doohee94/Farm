package farm.main.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import farm.dto.ownerDTO;
import farm.dto.userDTO;

@Service
public class MainDAOImple implements MainDAO {
	
	@Autowired
	SqlSessionTemplate ss;
	
	private String namespace = "main";
	
	
	//농사꾼 회원가입
	@Override
	public int insertUser(userDTO userDTO) {	
		int res = ss.insert(namespace+".user_insert", userDTO);	
		return res;
	}

	
	//농장주 회원가입
	@Override
	public int insertOwner(ownerDTO ownerDTO) {
		int res = ss.insert(namespace+".owner_insert", ownerDTO);
		return res;
	}

	//농사꾼 로그인
	@Override
	public String loginUser(String user_id, String user_pass) {
		
		HashMap map = new HashMap<>();
		map.put("user_id",user_id);
		map.put("user_pass", user_pass);
		
		String res = ss.selectOne(namespace+".user_login", map);

		if(res == null) {
			return "N";
		}else {
			return "Y";
		}		
	}

	//농장주 로그인
	@Override
	public String loginOwner(String user_id, String user_pass) {
		HashMap map = new HashMap<>();
		map.put("user_id",user_id);
		map.put("user_pass", user_pass);
		
		String res = ss.selectOne(namespace+".owner_login", map);
		
		if(res == null) {
			return "N";
		}else {
			return "Y";
		}		
	}
	
	
}
