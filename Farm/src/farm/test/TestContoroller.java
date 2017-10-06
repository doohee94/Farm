package farm.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/test")
public class TestContoroller {

	@Autowired
	TestDAO dao;
	@RequestMapping("/member.farm")
	public ModelAndView test(String user_id, String user_name, String user_email, String user_phone) {
		
		ModelAndView mv = new ModelAndView();
		
		TestDTO dto = new TestDTO(user_id, user_name, user_phone, user_email);
		
		int result = dao.insert(dto);
		
		System.out.println(result);
		mv.setViewName("index");
		return mv;
	}
	
}
