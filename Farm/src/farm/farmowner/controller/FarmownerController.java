package farm.farmowner.controller;
 
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import farm.dto.farmDTO;
import farm.dto.ownerDTO;
import farm.dto.ownerrentDTO;
import farm.dto.regioninfoDTO;
import farm.dto.rejectDTO;
import farm.farmowner.dao.FarmownerDAO;

@Controller
@RequestMapping("farmowner")
public class FarmownerController {
	
	@Autowired
	FarmownerDAO dao;
	
	@Autowired
	protected JavaMailSender mailSender;
	
	private String dir = "farm/";
	
	/**
	 * 커맨드 요청이 없는 일반 호출 
	 */
	@RequestMapping("/{url}.farm")
	public String main(@PathVariable String url){
			return dir+url;
	}
	
	/**
	 * ShowInfo
	 * 농장주 마이페이지 내정보, 분양신청 대기 수 출력
	 * 인자값 : ownerId 농장주 아이디
	 */
	@RequestMapping("/ownerInfo.farm")
	public ModelAndView ShowInfo(HttpSession ownerId){
		
		ModelAndView mv = new ModelAndView();
		
		String id = String.valueOf("maro");	//나중에 ownerId로 바꿔야함
		
		//dao에서 농장주 정보 가져옴
		ownerDTO ownerInfo = dao.showInfo(id);
		
		//dao에서 현재 분양대기중인 목록 가져오기
		int rentRegist = dao.rentCount(id);
		
		mv.setViewName(dir+"/ownerInfo");
		mv.addObject("ownerInfo",ownerInfo);
		mv.addObject("rentcount",rentRegist);
		
		return mv;
		
	}
	
	/**
	 * FarmList
	 * 농장주 마이페이지에서 농장 목록 출력
	 * 인자값 : ownerId 농장주 아이디
	 */
	@RequestMapping("/farmManage.farm")
	public ModelAndView FarmList(HttpSession ownerId) {
		
		ModelAndView mv = new ModelAndView();
		
		String id = String.valueOf("maro");	//나중에 ownerId로 바꿔야함
		
		List<farmDTO> farmList = dao.showFarmList(id);
		
		mv.setViewName(dir+"/farmManage");
		mv.addObject("farmList", farmList);
		mv.addObject("ownerId", id);
		
		return mv;
	}
	
	/**
	 * FarmRegion
	 * 농장주 마이페이지에서 농장별 구역목록 출력
	 * 인자값 : farmNum 농장번호
	 */
	@RequestMapping("/farmRegion.farm")
	public ModelAndView FarmRegion(String farmNum){
		
		ModelAndView mv = new ModelAndView();
		
		List<regioninfoDTO> regionList = dao.FarmRegion(farmNum);
		
		mv.setViewName(dir+"/farmRegion");
		mv.addObject("regionList", regionList);
		mv.addObject("farmNum",farmNum);
		
		return mv;
	}
	
	/**
	 * DistributionManage
	 * 농장주 마이페이지에서 분양관리 리스트 출력
	 * 인자값 : regionNum 구역번호
	 */
	@RequestMapping("/distributionManage.farm")
	public ModelAndView DistributionManage(HttpSession ownerId){
		
		ModelAndView mv = new ModelAndView();
		
		String id = String.valueOf("maro");	//나중에 ownerId로 바꿔야함
		
		List<ownerrentDTO> rentList = dao.DistributionManage(id);
		
		mv.setViewName(dir+"/distributionManage");
		mv.addObject("rentList", rentList);
		
		return mv;
	}
	
	
	/**
	 * GoAddFarm
	 * 농장추가 페이지 이동
	 * 인자값 : ownerId 농장주 아이디
	 */
	@RequestMapping("/goAddFarm.farm")
	public ModelAndView GoAddFarm(String ownerId){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(dir+"/addFarm");
		mv.addObject("ownerId", ownerId);
		
		return mv;
	}
	
	/**
	 * GoAddRegion
	 * 농장추가 페이지 이동
	 * 인자값 : ownerId 농장주 아이디
	 */
	@RequestMapping("/goAddRegion.farm")
	public ModelAndView GoAddRegion(String farmNum){
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(dir+"/addRegion");
		mv.addObject("farmNum", farmNum);
		
		return mv;
	}
	
	/**
	 * AddFarm
	 * 농장추가
	 * 인자값 : farmDTO 농장정보
	 */
	@RequestMapping("/addFarm.farm")
	public String AddFarm(farmDTO farmDTO){
		
		int res = dao.AddFarm(farmDTO);
		
		return "redirect:farmManage.farm";
	}
	
	/**
	 * AddRegion
	 * 농장추가
	 * 인자값 : regioninfoDTO 구역정보
	 */
	@RequestMapping("/addRegion.farm")
	public String AddRegion(regioninfoDTO regioninfoDTO){
		
		int res = dao.AddRegion(regioninfoDTO);
		
		return "redirect:farmManage.farm";
	}
	
	/**
	 * OkRegister
	 * 농장분양 신청 승인
	 * 인자값 : regionNum 구역번호 rentNum 분양번호
	 */
	@RequestMapping("/okRegister.farm")
	public String OkRegister(String regionNum, String rentNum){
		
		//구역정보 업데이트
		int res1 = dao.OkRegion(regionNum);
		//분양정보 업데이트
		int res2 = dao.OkRentInfo(rentNum);
		
		return "redirect:distributionManage.farm";
	}
	
	/**
	 * GoRejectForm
	 * 농장분양 거절페이지로 이동
	 * 인자값 : rentNum 분양번호
	 */
	@RequestMapping("/goRejectForm.farm")
	public ModelAndView GoRejectForm(String rentNum, String regionName){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName(dir+"/reject");
		mv.addObject("rentNum",rentNum);
		mv.addObject("regionName",regionName);
		
		return mv;
	}
	
	
	/**
	 * RejectRegister
	 * 농장분양 신청 거절
	 * 인자값 : rentNum 분양번호
	 */
	@RequestMapping("/rejectRegister.farm")
	public String RejectRegister(String rentNum, String reason){
		
		//분양정보 업데이트
		//int res1 = dao.RejectRegister(rentNum);
		
		rejectDTO res2 = dao.getRejectInfo(rentNum);
		System.out.println(res2.getUserEmail());
		
		MimeMessage msg = mailSender.createMimeMessage();
        String e_mail=res2.getUserEmail();
        String content = "거절사유는 다음과 같습니다 /n" + reason;
       	String title = res2.getUserName()+"님 신청구역 거절 사유입니다.";
       	
        try {
        	//메일 제목
        	msg.setSubject(title);
        	//메일 내용
			msg.setText(content);
			//보내는 메일
			msg.setRecipients(MimeMessage.RecipientType.TO , InternetAddress.parse(e_mail));
			
		} catch (MessagingException e) {
			System.out.println("이메일 작성 실패 : " + e.getMessage());
		}
        //메일 전송
        try {
        	mailSender.send(msg);
        }catch(Exception e){
        	System.out.println("전송 실패 : " + e.getMessage());
        }
		
		return "redirect:distributionManage.farm";
	}
	 
}
