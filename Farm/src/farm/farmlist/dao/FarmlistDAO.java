package farm.farmlist.dao;

import java.util.List;

import farm.dto.farmDTO;
import farm.dto.farmrentDTO;
import farm.dto.regioninfoDTO;
import farm.dto.userDTO;

public interface FarmlistDAO {
	
	
	public List<farmDTO> FarmList();

	public farmDTO ShowFarmInfo(String farmNum);
	
	public List<regioninfoDTO> ShowRegionInfo(String farmNum);
	
	public userDTO getUserInfo(String id);
	
	public int ApplyRent(farmrentDTO farmrentDTO);
	
	public int RentState(String userId);
}
