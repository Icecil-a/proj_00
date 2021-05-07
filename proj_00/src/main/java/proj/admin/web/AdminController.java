package proj.admin.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import proj.user.service.UserService;


@Controller
@RequestMapping("/admin/")
public class AdminController {

	private Logger log = LoggerFactory.getLogger(this.getClass());

    @Resource(name = "userService")
    private UserService userService;
	
	@RequestMapping(value = {"/main.do"})
	public String adminMain() throws Exception{
		return "redirect:/admin/userList.do?offset=0";
	}
	
	/*
	 * 회원 목록
	 */
	@RequestMapping(value = {"/userList.do"})
	public String userList(Model model, HttpServletRequest req) throws Exception{
		
		int offset = Integer.parseInt(req.getParameter("offset"))*10;
		
		model.addAttribute("userList", userService.userList(offset));
		model.addAttribute("userCount", userService.userCount());

		
		return "/admin/adminUser";
	}
	
	/*
	 * 회원 강제탈퇴
	 */
	@ResponseBody
	@RequestMapping(value = {"/userForcedWithdrawal.do"})
	public String userForcedWithdrawal(HttpServletRequest req) throws Exception{

		String id = req.getParameter("id");
		userService.userForcedWithdrawal(id);
		
		return "redirect:/userList.do";
	}

}