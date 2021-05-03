package proj.user.service;

import java.util.List;

import proj.com.util.PagingVO;

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
	 List<UserVO> userList(int offset) throws Exception;
	 
	/*
	 * 회원수 집계
	 */
	int userCount() throws Exception;
	
	 /*
	  * 회원 목록 페이징
	  */
//	 List<UserVO> userList(PagingVO vo) throws Exception;

}
