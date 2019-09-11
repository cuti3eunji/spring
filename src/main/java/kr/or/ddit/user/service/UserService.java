package kr.or.ddit.user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.model.User;

@Service
public class UserService implements IUserService {
	
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);
	
	@Resource(name="userDao")
	private IUserDao userDao;
	
	public UserService() {

	}

	public UserService(IUserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	* Method : getUserList
	* 작성자 : 박은지
	* 변경이력 :
	* @return
	* Method 설명 : 사용자 전체 리스트 조회 
	*/
	@Override
	public List<User> getUserList() {
		logger.debug("getUserList()");
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		return userDao.getUserList();
	}
	
	@Override
	public User getUser(String userId) {
		User user = userDao.getUser(userId);
		
		return user;
	}

	@Override
	public List<User> getUserListOnlyHalf() {
		List<User> halfUserList = userDao.getUserListOnlyHalf();
		
		return halfUserList;
	}
	
	/**
	* Method : getUserPagingList
	* 작성자 : PC-14
	* 변경이력 :
	* @param page
	* @return
	* Method 설명 : 사용자 페이징 리스트 조회
	*/
	@Override
	public Map<String, Object> getUserPagingList(Page page) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<User> userList = userDao.getUserPagingList(page);
		int totalCnt = userDao.getUserTotalCnt();
		
		map.put("userList", userList);
		map.put("paginationSize", (int)Math.ceil((double)totalCnt / page.getPageSize()));
		
		return map;
	}


	@Override
	public int insertUser(User user) {
		
		//선언적 트랜잭션
		//	. 예외가 발생 했을 때 정상적으로 rollback이 되는지
		//	. 예외가 발생하지 않고 정상적으로 코드가 실행 되었을 때 명시적인 commit없는데 commit이 정상적으로 되는지
		int insertCnt = userDao.insertUser(user);
		
		return insertCnt;
		
	}

	@Override
	public int deleteUser(String userId) {
		int deleteCnt = userDao.deleteUser(userId);
		
		return deleteCnt;
	}

	@Override
	public int updateUser(User user) {
		int updateCnt = userDao.updateUser(user);
		
		
		return updateCnt;
	}



}
