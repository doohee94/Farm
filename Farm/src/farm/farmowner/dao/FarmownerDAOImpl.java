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
import farm.dto.rejectDTO;

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
	 * FarmRegion
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

	/**
	 * DistributionManage
	 * 역할 : 농장분양 정보
	 * 인자값 : String ownerId 농장주아이디
	 * 리턴값 : List<ownerrentDTO> list 분양정보 리스트
	 */
	@Override
	public List<ownerrentDTO> DistributionManage(String ownerId) {
		
		HashMap map = new HashMap();
		map.put("ownerId",ownerId);
		
		List<ownerrentDTO> rentList = ss.selectList(namespace + ".rentList",map);
		
		return rentList;
	}

	/**
	 * AddFarm
	 * 역할 : 농장 추가
	 * 인자값 : String farmDTO 농장정보
	 * 리턴값 : int res 추가한 열의 갯수
	 */
	@Override
	public int AddFarm(farmDTO farmDTO) {
		
		int res = ss.insert(namespace+".addFarm",farmDTO);
		return res;
	}

	/**
	 * AddRegion
	 * 역할 : 농장 구역 추가
	 * 인자값 : regioninfoDTO 농장구역 정보
	 * 리턴값 : int res 추가한 열의 갯수
	 */
	@Override
	public int AddRegion(regioninfoDTO regioninfoDTO) {
		
		int res = ss.insert(namespace+".addRegion",regioninfoDTO);
		return res;
	}

	/**
	 * OkRegion
	 * 역할 : 분양신청 승인 후 구역정보 분양중으로 없데이트
	 * 인자값 : String regionNum 구역번호
	 * 리턴값 : int res 업데이트한 열의 갯수
	 */
	@Override
	public int OkRegion(String regionNum) {
		
		HashMap map = new HashMap();
		map.put("regionNum",regionNum);
		
		int res = ss.update(namespace + ".okRegion",map);
		
		return res;
	}

	/**
	 * OkRentInfo
	 * 역할 : 분양신청 승인 후 분양정보 승인됨으로 없데이트
	 * 인자값 : String rentNum 분양번호
	 * 리턴값 : int res 업데이트한 열의 갯수
	 */
	@Override
	public int OkRentInfo(String rentNum) {
		
		HashMap map = new HashMap();
		map.put("rentNum",rentNum);
		
		int res = ss.update(namespace + ".okRentInfo",map);
		return res;
	}
	
	/**
	 * RejectRegister
	 * 역할 : 분양신청 승인 후 분양정보 거절됨으로 없데이트
	 * 인자값 : String rentNum 분양번호
	 * 리턴값 : int res 업데이트한 열의 갯수
	 */
	@Override
	public int RejectRegister(String rentNum) {
		
		HashMap map = new HashMap();
		map.put("rentNum",rentNum);
		
		int res = ss.update(namespace + ".rejectRegister",map);
		return res;
		
	}

	@Override
	public rejectDTO getRejectInfo(String rentNum) {
		
		HashMap map = new HashMap();
		map.put("rentNum",rentNum);
		
		rejectDTO dto = ss.selectOne(namespace + ".getRejectInfo",map);
		return dto;
	}

}
