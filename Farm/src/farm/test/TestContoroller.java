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
	public ModelAndView test(TestDTO dto) {
		
		ModelAndView mv = new ModelAndView();
		
		System.out.println(dto.user_id);
		mv.setViewName("index");
		return mv;
	}
	
}
