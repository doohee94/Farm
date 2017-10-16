package farm.farmowner.dao;

import java.util.List;

import farm.dto.farmDTO;
import farm.dto.farmrentDTO;
import farm.dto.ownerDTO;
import farm.dto.ownerrentDTO;
import farm.dto.regioninfoDTO;
import farm.dto.rejectDTO;

public interface FarmownerDAO {

	/**
	 * showInfo
	 * 농장주 정보를 가져옴
	 */
	public ownerDTO showInfo(String ownerId);
	
	/**
	 * showInfo
	 * 농장주 정보를 가져옴
	 */
	public int rentCount(String ownerId);
	
	/**
	 * showFarmList
	 * 농장목록 가져옴
	 */
	public List<farmDTO> showFarmList(String ownerId);
	
	/**
	 * FarmRegion
	 * 농장별 구역 목록 가져옴
	 */
	public List<regioninfoDTO> FarmRegion(String farmNum);
	
	/**
	 * DistributionManage
	 * 분양신청 목록 가져옴
	 */
	public List<ownerrentDTO> DistributionManage(String ownerId);
	
	/**
	 * AddFarm
	 * 농장추가
	 */
	public int AddFarm(farmDTO farmDTO);
	
	/**
	 * AddRegion
	 * 구역 추가
	 */
	public int AddRegion(regioninfoDTO regioninfoDTO);
	
	/**
	 * UpdateRegion
	 * 구역 승인
	 */
	public int OkRegion(String regionNum);
	
	/**
	 * OkRentInfo
	 * 분양승인
	 */
	public int OkRentInfo(String rentNum);
	
	/**
	 * RejectRegister
	 * 분양 거절
	 */
	public int RejectRegister(String rentNum);
	
	public rejectDTO getRejectInfo(String rentNum);
}
