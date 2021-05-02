package proj.user.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import proj.com.util.PagingVO;
import proj.user.service.UserService;
import proj.user.service.UserVO;

@Service("userService")
public class UserServiceImpl extends EgovAbstractServiceImpl implements UserService{
	private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);

	
	@Resource(name="userDAO")
	private UserDAO userDAO;

	/*
	 * 아이디 중복 확인
	 */
	@Override
	public boolean userIdChk(String id) throws Exception {
		boolean rtn = false;
		
    	try{
    		rtn =  (boolean)userDAO.userIdChk(id);
    	} catch (NullPointerException ignore) {
			log.error("[NullPointerException] : Connection Close");
		} catch (Exception ignore) {
			log.error("["+ ignore.getClass() +"] Connection Close : " + ignore.getMessage());
			throw new Exception("[" + ignore.getClass() + "]:" + ignore.getMessage());
		}
		
		return rtn;
	}

	/*
	 * 회원 정보 등록
	 */
	@Override
	public int insertUserInfo(UserVO vo) throws Exception {
		return userDAO.insertUserInfo(vo);
	}

	/*
	 * 로그인
	 */
	@Override
	public UserVO login(UserVO vo) throws Exception {
		
		return userDAO.login(vo);
	}

	 /*
	  * 회원 목록
	  */
	@Override
	public List<UserVO> userList() throws Exception {
		return userDAO.userList();
	}

	/*
	 * 회원수 집계
	 */
	@Override
	public int userCount() throws Exception {
		return userDAO.userCount();
	}
	
	 /*
	  * 회원 목록 페이징
	  */
//	@Override
//	public List<UserVO> userList(PagingVO vo) throws Exception {
//		return userDAO.userList(vo);
//	}




}
