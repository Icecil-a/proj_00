package proj.user.service.Impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import proj.user.service.UserService;
import proj.user.service.UserVO;

@Service("userService")
public class UserServiceImpl extends EgovAbstractServiceImpl implements UserService{
	private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class);

	
	@Resource(name="userDAO")
	private UserDAO userDAO;

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

	@Override
	public int insertUserInfo(UserVO vo) throws Exception {
		return userDAO.insertUserInfo(vo);
	}

	@Override
	public UserVO login(UserVO vo) throws Exception {
		
		return userDAO.login(vo);
	}

}
