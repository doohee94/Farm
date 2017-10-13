package farm.farmlist.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import farm.dto.farmDTO;
import farm.dto.farmrentDTO;
import farm.dto.regioninfoDTO;
import farm.dto.userDTO;


@Service
public class FarmlistDAOImpl implements FarmlistDAO {
	
	@Autowired
	SqlSessionTemplate ss;
	
	private String namespace = "farmlist";

	/**
	 * ShowFarmInfo
	 * 역할 : 농장정보 출력
	 * 인자값 : farmNum 농장번호
	 */
	@Override
	public farmDTO ShowFarmInfo(String farmNum) {
		
		HashMap map = new HashMap();
		map.put("farmNum", farmNum);
		
		farmDTO farmInfo = ss.selectOne(namespace + ".showFarminfo",map);
		
		return farmInfo;
	}

	/**
	 * ShowRegionInfo
	 * 역할 : 농장의 구역정보 출력
	 * 인자값 : farmNum 농장번호
	 */
	@Override
	public List<regioninfoDTO> ShowRegionInfo(String farmNum) {
		
		HashMap map = new HashMap();
		map.put("farmNum", farmNum);
		
		List<regioninfoDTO> regionList = ss.selectList(namespace +".showRegionInfo", map);
		
		return regionList;
	}
	
	
	/**
	 * showfarmList
	 * 역할 : 농장주가 등록한 농장리스트 출력
	 * 인자값 : String ownerId 농장주 아이디
	 * 리턴값 : List<FarmDTO> list 농장리스트
	 */
	@Override
	public List<farmDTO> FarmList() {
		
		List<farmDTO> farmlist = ss.selectList(namespace + ".farmList");
		
		return farmlist;
	}

	@Override
	public userDTO getUserInfo(String id) {
		
		HashMap map = new HashMap();
		map.put("userId", id);
		
		userDTO userInfo = ss.selectOne(namespace + ".getUserInfo",map);
		
		return userInfo;
	}

	@Override
	public int ApplyRent(farmrentDTO farmrentDTO) {
		
		int res = ss.insert(namespace + ".applyRent",farmrentDTO);
		
		return res;
	}

}
