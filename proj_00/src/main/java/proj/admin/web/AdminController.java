package proj.admin.web;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import proj.com.util.PagingVO;
import proj.user.service.UserService;


@Controller
@RequestMapping("/admin/")
public class AdminController {

	private Logger log = LoggerFactory.getLogger(this.getClass());

    @Resource(name = "userService")
    private UserService userService;
	
	@RequestMapping(value = {"/main.do"})
	public String adminMain() throws Exception{
		return "redirect:/admin/userList.do";
	}
	
	@RequestMapping(value = {"/userList.do"})
	public String userList(Model model, PagingVO vo) throws Exception{
		
		model.addAttribute("userList", userService.userList());
		
		return "/admin/adminUser";
	}

}
