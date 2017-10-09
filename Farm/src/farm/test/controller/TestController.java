package farm.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import farm.test.dao.TestDAO;
import farm.test.dto.testDTO;

@Controller
@RequestMapping("test")
public class TestController {
	
	@Autowired
	TestDAO dao;
	
	private String dir = "test/";
	
	@RequestMapping("/{url}.farm")
	public String checklist(@PathVariable String url){
		return dir + url;

	}
	
	
	@RequestMapping("/test.farm")
	public String insertUser(testDTO testDTO){
		
		System.out.println("테스트 컨트롤러");
		
		int res = dao.insertUser(testDTO);
		System.out.println("res>>>>>"+res);
		
		return dir+"testOk";
	}
}
