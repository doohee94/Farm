package farm.farmowner.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import farm.dto.farmDTO;
import farm.dto.farmrentDTO;
import farm.dto.ownerDTO;
import farm.dto.ownerrentDTO;
import farm.dto.regioninfoDTO;

@Service
public class FarmownerDAOImpl implements FarmownerDAO {

	@Autowired
	SqlSessionTemplate ss;
	
	private String namespace = "famerowner";
	
	/**
	 * showInfo
	 * 역할 : 농장주로 로그인 후 마이페이지에 농장주 정보 출력
	 * 인자값 : ownerId 농장주 아이디
	 * 리턴값 : ownerDTO 농장주 정보
	 */
	@Override
	public ownerDTO showInfo(String ownerId) {
		// TODO Auto-generated method stub
		
		HashMap map = new HashMap();
		map.put("ownerId",ownerId);
		
		ownerDTO dto = ss.selectOne(namespace + ".showOwnerInfo",map);
		return dto;
	}

	/**
	 * rentCount
	 * 역할 : 농장주로 로그인 후 마이페이지에 분양신청 건 수 출력
	 * 인자값 : String ownerId 농장주 아이디
	 * 리턴값 : int cnt 분양신청 수
	 */
	@Override
	public int rentCount(String ownerId) {

		HashMap map = new HashMap();
		map.put("ownerId",ownerId);
		
		int cnt = ss.selectOne(namespace + ".rentCount",map);
		
		return cnt;
	}

	/**
	 * showfarmList
	 * 역할 : 농장주가 등록한 농장리스트 출력
	 * 인자값 : String ownerId 농장주 아이디
	 * 리턴값 : List<FarmDTO> list 농장리스트
	 */
	@Override
	public List<farmDTO> showFarmList(String ownerId) {

		HashMap map = new HashMap();
		map.put("ownerId",ownerId);
		
		List<farmDTO> farmlist = ss.selectList(namespace + ".farmList",map);
		
		return farmlist;
	}

	/**
	 * DistributionManage
	 * 역할 : 농장 별 구역 리스트 출력
	 * 인자값 : String farmNum 농장번호
	 * 리턴값 : List<regioninfoDTO> list 구역 리스트
	 */
	@Override
	public List<regioninfoDTO> FarmRegion(String farmNum) {
		
		HashMap map = new HashMap();
		map.put("farmNum",farmNum);
		
		List<regioninfoDTO> regionList = ss.selectList(namespace + ".regionList",map);
		
		return regionList;
	}

	@Override
	public List<ownerrentDTO> DistributionManage(String ownerId) {
		
		HashMap map = new HashMap();
		map.put("ownerId",ownerId);
		
		List<ownerrentDTO> rentList = ss.selectList(namespace + ".rentList",map);
		
		return rentList;
	}

	@Override
	public int AddFarm(farmDTO farmDTO) {
		
		int res = ss.insert(namespace+".addFarm",farmDTO);
		return res;
	}

	@Override
	public int AddRegion(regioninfoDTO regioninfoDTO) {
		
		int res = ss.insert(namespace+".addRegion",regioninfoDTO);
		return res;
	}

}
