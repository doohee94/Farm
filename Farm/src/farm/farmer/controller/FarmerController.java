package farm.farmer.controller;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import farm.dto.diaryDTO;
import farm.dto.farmDTO;
import farm.dto.farmrentDTO;
import farm.dto.ownerDTO;
import farm.dto.regioninfoDTO;
import farm.dto.userDTO;
import farm.farmer.dao.FarmerDAO;

@Controller
@RequestMapping("farmer")
public class FarmerController {

	private String dir = "farmer/";
	public final static int PORT = 1239;
	public final static String HOST = "192.168.137.100";
	@Autowired
	FarmerDAO farmerDAO;
	
	@RequestMapping("/{url}.farm")
	public String checklist(@PathVariable String url){
		return dir + url;

	}
	
	/**
	 *농사꾼 메인 
	 * */
	@RequestMapping("farmer_main")
	public ModelAndView farmer_main(HttpSession session) {
		ModelAndView mv = new ModelAndView();		
		//정보 받아오기
		Socket client = null;
		DataInputStream in = null;
		DataOutputStream out = null;
		
		String outData = "없음";

		try{
			// 1. 서버에 연결하기 위해 소켓 생성(서버 IP, 서버 port)
				client= new Socket(HOST, PORT);
			// 2. 소켓의 입출력 스트림 얻기
				in = new DataInputStream( client.getInputStream());
				out	= new DataOutputStream( client.getOutputStream());
			//3. 값을 서버에 전송
				String inData = "requestData";
				out.writeUTF(inData);
			// 4. 서버로부터 응답을 받음
				outData = in.readLine();	
				System.out.println("Get from server : " + outData );
			// 5. 입출력 스트림의 닫음
				out.close();
				in.close();
				client.close();
		}catch(IOException ex){
			System.out.println("Error writing.." + ex );
			ex.printStackTrace();
		}
		
	
		String []data = outData.split("/");
		mv.addObject("h", data[0]);
		mv.addObject("t", data[1]);
		mv.setViewName(dir + "farmer_main");
		
		return mv;
	}
	
	
	
	/**
	 * 농사꾼 내정보
	 * */
	@RequestMapping("myInfo.farm")
	public ModelAndView userInfo(HttpSession session) {
		
		ModelAndView mv = new ModelAndView();		
		userDTO dto = farmerDAO.userDTO(session);	
		System.out.println("컨트롤러>>"+dto.getUserPhone());
		mv.addObject("userDTO",dto);		
		mv.setViewName(dir+"myInfo");
		return mv;
	}
	
	
	/**
	 * 승인대기상태
	 * */
	@RequestMapping("applyReady.farm")
	public ModelAndView applyReady(HttpSession session) {
		ModelAndView mv = new ModelAndView();		
		int state=0;
		farmrentDTO farmrentDTO = farmerDAO.farmrentDTO(session,state);
		
		//farmrentDTO가 null이 아닐경우 farm에 관한 정보 가져오기 
		if(farmrentDTO != null) {	
			//구역정보 가져오기
			String region_num = String.valueOf(farmrentDTO.getRegionNum());
			regioninfoDTO regioninfoDTO = farmerDAO.regioninfoDTO(region_num);
			//농장정보가져오기
			String farm_num = String.valueOf(regioninfoDTO.getFarmNum());
			farmDTO farmDTO = farmerDAO.farmDTO(farm_num);
			//농장주 정보가져오기
			String owner_id = farmDTO.getOwnerId();
			ownerDTO ownerDTO = farmerDAO.ownerDTO(owner_id);
			//보내기 
			mv.addObject("regioninfoDTO", regioninfoDTO);
			mv.addObject("farmDTO", farmDTO);
			mv.addObject("ownerDTO", ownerDTO);
		}//end if
		
		mv.addObject("farmrentDTO", farmrentDTO);
		mv.setViewName(dir+"applyReady");
		return mv;
	}
	
	/**
	 * 분양취소
	 * */
	@RequestMapping("rentCancel.farm")
	public ModelAndView rentCancel(String rent_num) {
		ModelAndView mv = new ModelAndView();		
		
		int res = farmerDAO.rentCancel(Integer.parseInt(rent_num));
		System.out.println("분양취소>>"+res);
		mv.setViewName(dir+"farmer_main");
		return mv;
	}
	
	/**
	 * 내농장 정보
	 * */
	@RequestMapping("farmInfo.farm")
	public ModelAndView farmInfo(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		//농장명 농장주, 주소 농장연락처 종료날짜
		//farm,farm,farm,farm,rent
		int state = 1;
		farmrentDTO farmrentDTO = farmerDAO.farmrentDTO(session,state);
		//System.out.println("컨트롤러>>"+farmrentDTO.getRentStartdate());
		//farmrentDTO가 null이 아닐경우 farm에 관한 정보 가져오기 
				if(farmrentDTO != null) {	
					//구역정보 가져오기
					String region_num = String.valueOf(farmrentDTO.getRegionNum());
					regioninfoDTO regioninfoDTO = farmerDAO.regioninfoDTO(region_num);
					//농장정보가져오기
					String farm_num = String.valueOf(regioninfoDTO.getFarmNum());
					farmDTO farmDTO = farmerDAO.farmDTO(farm_num);				
					//보내기 
					mv.addObject("farmDTO", farmDTO);
					
				}//end if
		
		mv.addObject("farmrentDTO", farmrentDTO);
		return mv;
	}
	
	/**
	 * 일기리스트
	 * */
	@RequestMapping("viewDiaryList.farm")
	@ResponseBody
	public JSONArray diaryList(HttpSession session) {
		
		List<diaryDTO> list = farmerDAO.diaryList(String.valueOf(session.getAttribute("user_id")));
		JSONArray diaryList = new JSONArray();	
		for(int i=0; i<list.size(); i++) {
			JSONObject temp  = new JSONObject();
			temp.put("id", list.get(i).getDiaryNum());
			temp.put("title", list.get(i).getDiaryTitle());
			temp.put("start", list.get(i).getDiaryDate());
			diaryList.add(temp);
		}
		return diaryList;
	}
	
	/**
	 * 일기쓰기페이지
	 * */
	@RequestMapping("gowriteDiary.farm")
	public ModelAndView goWriteDiary(String today) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("today", today);
		mv.setViewName(dir+"writeDiary");
		return mv;
	}
	
	/**
	 * 일기 저장
	 * */
	
	@RequestMapping("writeDiary.farm")
	public ModelAndView writeDiary(diaryDTO diaryDTO, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		diaryDTO.setUserId(String.valueOf(session.getAttribute("user_id")));
		
		System.out.println(diaryDTO.getDiaryPhoto1()+ "\n"+diaryDTO.getDiaryPhoto1fake()+
				diaryDTO.getDiaryPhoto2()+ "\n"+diaryDTO.getDiaryPhoto2fake()+
				diaryDTO.getDiaryPhoto3()+ "\n"+diaryDTO.getDiaryPhoto3fake()+
				diaryDTO.getDiaryPhoto4()+ "\n"+diaryDTO.getDiaryPhoto4fake());
		
		
		int res = farmerDAO.writeDiary(diaryDTO);
		mv.setViewName(dir+"farmDiary");
		return mv;
	}
	
	/**
	 * 일기보기
	 * */
	@RequestMapping("viewDiary.farm")
	public ModelAndView viewDiary(String id) {
		ModelAndView mv = new ModelAndView();
		
		diaryDTO dto = farmerDAO.viewDiary(id);
		mv.addObject("diaryDTO", dto);
		return mv;
	}
	
	/**
	 * 일기 삭제
	 * */
	@RequestMapping("diaryDelete.farm")
	public ModelAndView deleteDiary(String id) {
		ModelAndView mv = new ModelAndView();
		
		int res = farmerDAO.deleteDiary(id);
		mv.setViewName(dir+"farmDiary");
		
		return mv;
	}
	
	
	
	
}//end class
