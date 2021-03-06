package farm.farmlist.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import farm.dto.farmDTO;
import farm.dto.farmrentDTO;
import farm.dto.regioninfoDTO;
import farm.dto.userDTO;
import farm.farmlist.dao.FarmlistDAO;

@Controller
@RequestMapping("farmlist")
public class FarmlistController {

	@Autowired
	FarmlistDAO dao;
	
	private String dir = "main/";
	
	
	/**
	 * FarmList
	 * 역할 : 메인에서 농장찾기 버튼을 누르면 농장리스트 출력
	 */
	@RequestMapping("/farmList.farm")
	public ModelAndView FarmList(){
		
		ModelAndView mv = new ModelAndView();
		
		List<farmDTO> farmlist = dao.FarmList();
		
		mv.setViewName(dir + "farmList");
		mv.addObject("farmList",farmlist);
		
		return mv;
	}
	
	/**
	 * ShowFarmInfo
	 * 역할 : 농장리스트 누르면 농장 정보 출력
	 */
	@RequestMapping("/showFarmInfo.farm")
	public ModelAndView ShowFarmInfo(String farmNum){
		
		ModelAndView mv = new ModelAndView();
		
		farmDTO farmInfo = dao.ShowFarmInfo(farmNum);
		
		List<regioninfoDTO> regionInfo = dao.ShowRegionInfo(farmNum);
		
		mv.setViewName(dir + "/farmdetail");
		mv.addObject("farmInfo",farmInfo);
		mv.addObject("regionInfo",regionInfo);
		
		return mv;
	}
	
	/**
	 * GoApplyRegion
	 * 역할 : 분양 신청 페이지 이동
	 */
	@RequestMapping("/goApplyRegion.farm")
	public ModelAndView GoApplyRegion(HttpSession session, String farmNum){
		
		String id = String.valueOf(session.getAttribute("user_id"));
		
		ModelAndView mv = new ModelAndView();
		
		int rentState = dao.RentState(id);
		System.out.println(rentState);
		
		if(session.getAttribute("user_id") == null || rentState != 0 || session.getAttribute("user_state") == "1"){
			
			mv.addObject("msg",111);
			mv.setViewName("redirect:showFarmInfo.farm?farmNum="+farmNum);
			
			return mv;
		}
		else{
			userDTO userInfo = dao.getUserInfo(id);
			List<regioninfoDTO> regionInfo = dao.ShowRegionInfo(farmNum);
			
			mv.setViewName(dir+"/farmApply");
			mv.addObject("userInfo", userInfo);
			mv.addObject("regionInfo", regionInfo);
			
			return mv;
		}
		
	}
	
	/**
	 * GoMain
	 * 역할 : 분양신청 완료 후 메인으로 넘어가기
	 */
	@RequestMapping("/goMain.farm")
	public ModelAndView GoMain(farmrentDTO farmrentDTO){
		
		ModelAndView mv = new ModelAndView();
		
		int res = dao.ApplyRent(farmrentDTO);
		System.out.println(farmrentDTO.getUserId());
		mv.setViewName("main/main");
		
		return mv;
	}
	
}
