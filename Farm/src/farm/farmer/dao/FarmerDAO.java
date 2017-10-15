package farm.farmer.dao;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import farm.dto.farmrentDTO;
import farm.dto.ownerDTO;
import farm.dto.diaryDTO;
import farm.dto.farmDTO;
import farm.dto.regioninfoDTO;
import farm.dto.userDTO;


public interface FarmerDAO {
	
	//회원정보불러오기
	public userDTO userDTO(HttpSession session);
	//승인대기상태불러오기
	public farmrentDTO farmrentDTO(HttpSession session,int state);
	//구역정보 불러오기
	public regioninfoDTO regioninfoDTO(String region_num);
	//농장정보 불러오기
	public farmDTO farmDTO(String farm_num);
	//농장주 정보 불러오기
	public ownerDTO ownerDTO(String owner_id);
	
	//분양취소
	public int rentCancel(int rent_num);
	
	//일기쓰기
	public int writeDiary(diaryDTO diaryDTO);
	//일기리스트
	public List<diaryDTO> diaryList(String user_id);
	//일기보기
	public diaryDTO viewDiary(String id);
	//일기삭제
	public int deleteDiary(String id);
}
