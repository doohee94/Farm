package farm.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("farm")
public class MainController {

	private String dir = "main/";
	
	@RequestMapping("/{url}.farm")
	public String checklist(@PathVariable String url){
		return dir + url;

	}
}
