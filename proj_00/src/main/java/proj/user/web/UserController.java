package proj.user.web;

import java.io.PrintWriter;
import java.util.Base64;
import java.util.Base64.Encoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import proj.user.service.UserService;
import proj.user.service.UserVO;



@Controller
@RequestMapping("/user/")
public class UserController {
	private Logger log = LoggerFactory.getLogger(this.getClass());

    @Resource(name = "userService")
    private UserService userService;
    
//    @Autowired
//    private BCryptPasswordEncoder pwdEncoder;
    
    
	/*
	 * 회원 정보 입력 페이지 호출
	 */
	@RequestMapping(value = "/signUp.do")
	public String goMberInfoinput() throws Exception {

		return "user/signUp";	
	}
	
	/*
	 * 아이디 중복확인
	 */
	@RequestMapping(value = {"/userIdChk.do"})
	@ResponseBody
    public String userIdChk(HttpServletRequest req) throws Exception {
		
		String id = req.getParameter("id");	
						
		boolean tf = userService.userIdChk(id);

		String result = String.valueOf(tf);
		
		return result;
	}
	
	/*
	 * 회원 가입 등록
	 */
	@RequestMapping(value = {"/insertUserInfo.do"})
	public String insertUserInfo(UserVO vo, RedirectAttributes redirectAttr) throws Exception {
		
		// 비밀번호 암호화
		// Base64 이용
//		Encoder encoder = Base64.getEncoder();		
//		byte bytePwd[] = vo.getPwd().getBytes();		
//		String pwd =  encoder.encodeToString(bytePwd);
		
		// BCryptPasswordEncoder 이용
//		String inputPwd = vo.getPwd();
//		String pwd = pwdEncoder.encode(inputPwd);
//		vo.setPwd(pwd);
		
	
		userService.insertUserInfo(vo);
		
		redirectAttr.addFlashAttribute("msg", "회원가입 되었습니다.\\n로그인 페이지로 이동합니다.");
				
		return "redirect:/user/login.do";
		
	}
	
	/*
	 * 로그인 페이지
	 */
	@RequestMapping(value = "/login.do")
	public String loginForm(HttpSession session) throws Exception {
		
		// 기존 로그인 정보 삭제
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
		}

	return "user/login";	
	}
	
	/*
	 * 로그인 실행
	 */
	@RequestMapping(value = "/loginProc.do")
	public String loginProcess(HttpSession session, UserVO vo, RedirectAttributes redirectAttr) throws Exception {
				
		UserVO login = userService.login(vo);			
		
		if(login != null) {
			session.setAttribute("login", login);
			
			// 관리자 여부 확인
			if(login.getId().equals("admin") && login.getPwd().equals("admin")) {

				return "redirect:/admin/main.do";			
			}
			
			redirectAttr.addFlashAttribute("msg", "로그인 되었습니다.\\n메인 페이지로 이동합니다.");
			
			return "redirect:/main.do";
			
		}else {
			
			redirectAttr.addFlashAttribute("msg", "일치하는 아이디와 비밀번호가 없습니다.");
			
			return "redirect:/user/login.do";
		}
		
	}
	
	/*
	 * 로그아웃
	 */
	@RequestMapping(value = "/logout.do")
	public String logout(HttpSession session, RedirectAttributes redirectAttr) throws Exception {
		session.invalidate();
		
		redirectAttr.addFlashAttribute("msg", "로그아웃 되었습니다.");

		return "redirect:/main.do";		
	}

}
