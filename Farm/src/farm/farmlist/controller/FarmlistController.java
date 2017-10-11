package farm.farmlist.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import farm.dto.farmDTO;
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
	 * 역할 : 메인에서 농장찾기 버튼을 누르면 농장리스트 출력
	 * 리턴값 : List
	 */
	@RequestMapping("/farmList.farm")
	public ModelAndView FarmList(){
		
		ModelAndView mv = new ModelAndView();
		
		List<farmDTO> farmlist = dao.FarmList();
		
		mv.setViewName(dir + "farmList");
		mv.addObject("farmList",farmlist);
		
		return mv;
	}
	
	
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
	
	@RequestMapping("/goApplyRegion.farm")
	public ModelAndView GoApplyRegion(HttpSession userId, String farmNum){
		
		String id = String.valueOf("maro");	//나중에 세션처리로 바꿔줌
		
		ModelAndView mv = new ModelAndView();
		
		if(userId == null){
			
			mv.setViewName("redirect:farmlist/showFarmInfo.farm?farmNum="+farmNum);
			
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
	
}
