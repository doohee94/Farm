package farm.main.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.interceptors.SessionAssociationInterceptor;

import farm.dto.farmDTO;
import farm.dto.ownerDTO;
import farm.dto.userDTO;
import farm.main.dao.MainDAO;

@Controller
@RequestMapping("farm")
public class MainController {

	@Autowired
	MainDAO mainDAO;
	
	private String dir = "main/";
	
	@RequestMapping("/{url}.farm")
	public String checklist(@PathVariable String url){		
		return dir + url;

	}
	
	
	/**
	 *  농사꾼 회원가입 
	 * */
	@RequestMapping("/user_regist.farm")
	public ModelAndView userSign(userDTO userDTO){
		
		ModelAndView mv = new ModelAndView();
		int res = mainDAO.insertUser(userDTO);		
		mv.setViewName(dir+"main");
		return mv;
	}
	
	/**
	 *  농장주 회원가입 
	 * */
	@RequestMapping("/owner_regist.farm")
	public ModelAndView ownerSign(ownerDTO ownerDTO){
		
		ModelAndView mv = new ModelAndView();
		int res = mainDAO.insertOwner(ownerDTO);
		mv.setViewName(dir+"main");
		return mv;
	}
	
	
	/**
	 * 로그인
	 * */
	@RequestMapping("goLogin.farm")
	public ModelAndView login(HttpSession session, String state, String user_id, String user_pass) {
		ModelAndView mv = new ModelAndView();
		
		String res = null;
		System.out.println("로그인>>"+state);
		if(state.equals("0")) {//state가 0일경우 농사꾼 로그인
			res = mainDAO.loginUser(user_id, user_pass);
		}else if(state.equals("1")) {//state가 1일경우 농장주 로그인 
			res = mainDAO.loginOwner(user_id, user_pass);
		}
		
		//로그인 후 페이지 이동
		if(res.equals("Y")) { //로그인 결과가 있을 경우 세션에 아이디 저장 후 메인으로 이동
			session.setAttribute("user_id", user_id);
			mv.setViewName(dir+"main");
		}else if(res.equals("N")) { //로그인 결과가 없을경우 다시 로그인 페이지로 리턴			
			mv.addObject("login_fail", "fail");
			mv.setViewName(dir+"login");
		}
		
		return mv;
	}
	
}
