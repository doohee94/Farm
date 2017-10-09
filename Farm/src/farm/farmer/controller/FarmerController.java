package farm.farmer.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("farmer")
public class FarmerController {

	private String dir = "farmer/";
	
	
	@RequestMapping("/{url}.farm")
	public String checklist(@PathVariable String url){
		return dir + url;

	}
}
