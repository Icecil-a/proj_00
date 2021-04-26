package proj.user.service.Impl;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import proj.user.service.UserVO;

@Repository("userDAO")
public class UserDAO extends EgovAbstractMapper{
	
	/**
	 * 아이디 중복 확인
	 */
	public boolean userIdChk(String id) throws Exception{
		return (boolean) selectOne("userDAO.userIdChk", id);		
	}
	
	/*
	 * 회원 정보 등록 
	 */
	public int insertUserInfo(UserVO vo) throws Exception{
		return (int) insert("userDAO.insertUserInfo", vo);
		
	}
}
