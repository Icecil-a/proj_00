package proj.user.web;

import java.util.Base64;
import java.util.Base64.Encoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import proj.user.service.UserService;
import proj.user.service.UserVO;



@Controller
@RequestMapping("/user/")
public class UserController {
	private Logger log = LoggerFactory.getLogger(this.getClass());

    @Resource(name = "userService")
    private UserService userService;
    
	/*
	 * 회원 정보 입력 페이지 호출
	 */
	@RequestMapping(value = "/signUp.do")
	public String goMberInfoinput(HttpServletRequest req, HttpServletResponse res) throws Exception {

		return "user/signUp";	
	}
	
	/*
	 * 아이디 중복확인
	 */
	@RequestMapping(value = {"/userIdChk.do"})
	@ResponseBody
    public String userIdChk(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		String id = req.getParameter("id");	
						
		boolean tf = userService.userIdChk(id);

		String result = String.valueOf(tf);
		
		return result;
	}
	
	/*
	 * 회원 가입 등록
	 */
	@RequestMapping(value = {"/insertUserInfo.do"})
	public String insertUserInfo(HttpServletRequest req, HttpServletResponse res, UserVO vo) throws Exception {
		
		// 비밀번호 암호화
		Encoder encoder = Base64.getEncoder();
		
		byte bytePwd[] = vo.getPwd().getBytes();		
		String pwd =  encoder.encodeToString(bytePwd);
		vo.setPwd(pwd);
		
		System.out.println("========================" + pwd);
		
		userService.insertUserInfo(vo);
		
		return "redirect:/main.do";
		
	}

}
