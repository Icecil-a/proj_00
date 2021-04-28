package proj.admin.web;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin/")
public class AdminController {

	private Logger log = LoggerFactory.getLogger(this.getClass());

//    @Resource(name = "userService")
//    private UserService userService;
	
	@RequestMapping(value = {"/main.do"})
	public String adminMain() throws Exception{
		return "/adminMain";
	}
}
