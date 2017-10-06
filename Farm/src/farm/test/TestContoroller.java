package farm.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("test/")
public class TestContoroller {

	@Autowired
	TestDAO dao;
	
	public int insert(TestDTO dto) {
		System.out.println(dto.getUserId());
		
		return 0;
	}
	
}
