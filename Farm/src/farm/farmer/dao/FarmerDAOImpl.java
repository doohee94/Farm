package farm.farmer.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;
import farm.dto.farmrentDTO;
import farm.dto.ownerDTO;
import farm.dto.diaryDTO;
import farm.dto.farmDTO;
import farm.dto.regioninfoDTO;
import farm.dto.userDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FarmerDAOImpl implements FarmerDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	private String namespace = "farmer";
	
	//내정보 가져오기
	@Override
	public userDTO userDTO(HttpSession session) {
		
		String user_id = String.valueOf(session.getAttribute("user_id"));
		userDTO dto = ss.selectOne(namespace+".userInfo",user_id);
		return dto;
	}
	
	//승인대기상태 가져오기
	@Override
	public farmrentDTO farmrentDTO(HttpSession session,int state) {
		String user_id = String.valueOf(session.getAttribute("user_id"));
		HashMap map = new HashMap<>();
		map.put("user_id", user_id);
		map.put("state", state);
		System.out.println("디비>>>>>"+state);
		farmrentDTO dto = ss.selectOne(namespace+".farmrentInfo", map);
	
		return dto;
	}
	//구역정보 가져오기
	@Override
	public regioninfoDTO regioninfoDTO(String region_num) {
		regioninfoDTO regioninfoDTO = ss.selectOne(namespace+".regionInfo",region_num);
		return regioninfoDTO;
	}
	
	//농장정보 가져오기
	@Override
	public farmDTO farmDTO(String farm_num) {
		farmDTO farmDTO = ss.selectOne(namespace+".farm",farm_num);
		return farmDTO;
	}
	
	//농장주 정보 가져오기
	@Override
	public ownerDTO ownerDTO(String owner_id) {
		ownerDTO ownerDTO = ss.selectOne(namespace+".owner", owner_id);		
		return ownerDTO;
	}
	
	//분양취소
	@Override
	public int rentCancel(int rent_num) {
		int rentCancel = ss.update(namespace+".rentCancel", rent_num);
		return rentCancel;
	}
	
	//일기쓰기
	@Override
	public int writeDiary(diaryDTO diaryDTO) {		
		int res = ss.insert(namespace+".insertDiary", diaryDTO);
		return res;
	}

	//일기리스트
	@Override
	public List<diaryDTO> diaryList(String user_id) {
		List<diaryDTO> list = ss.selectList(namespace+".diaryList", user_id);
		return list;
	}
	
	
	

}
