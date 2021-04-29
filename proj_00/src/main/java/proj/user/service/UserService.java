package proj.user.service;

import java.util.List;

public interface UserService {

	/*
	 * 아이디 중복 확인
	 */
	boolean userIdChk(String id) throws Exception;
	
	/*
	 * 회원 정보 등록
	 */
	int insertUserInfo(UserVO vo) throws Exception;
	
	/*
	 * 로그인
	 */
	 UserVO login(UserVO vo) throws Exception;
	 
	 /*
	  * 회원 목록
	  */
	 List<UserVO> userList() throws Exception;

}
