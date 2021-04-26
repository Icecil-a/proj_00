package proj.com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	/*
	 * 메인 페이지
	 */
	@RequestMapping(value = "/main.do")
	public String mainPage() {
		
		return "main";
	}
}
