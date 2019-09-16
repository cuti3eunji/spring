package kr.or.ddit.user.repository;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.model.User;

public class UserDaoTest extends RootTestConfig{
	//userDao를 테스트하기위해 필요한거
	//db 연결, 트랜잭션, dao
	private static final Logger logger = LoggerFactory.getLogger(UserDaoTest.class);
	
	@Resource(name="userDao")
	private IUserDao userDao;
	
	private String userId = "testBROWN";
	
	@Test
	public void getUserListTest() {
		/***Given***/
		

		/***When***/
		List<User> userList = userDao.getUserList();
		logger.debug("userList : {} ", userList);

		/***Then***/
		assertTrue(userList.size() > 105);
	}
	
	
	@Test
	public void getUserTest() {
		/***Given***/
		String userId = "brown";

		/***When***/
		User user = userDao.getUser(userId);

		/***Then***/
		assertNotNull(user);
	}
	
	
	@Test
	public void getUserListOnlyHalfTest(){
		/***Given***/

		/***When***/
		List<User> halfList = userDao.getUserListOnlyHalf();

		/***Then***/
		assertEquals(50, halfList.size());
	}
	
	
	@Test
	public void getUserPagingListTest() {
		/***Given***/
		Page page = new Page(1, 10);
		
		/***When***/
		List<User> list = userDao.getUserPagingList(page);

		/***Then***/
		assertEquals(10, list.size());
	}
	
	
	@Test
	public void getUserTotalCntTest() {
		/***Given***/
		

		/***When***/

		/***Then***/
		assertEquals(107, userDao.getUserTotalCnt());
	}
	
	
	@Test
	public void insertUserTest() throws ParseException {
		/***Given***/
		User user = new User();
		user.setUserId(userId);
		user.setUserNm("브라운테스트");
		user.setAlias("곰테스트");
		user.setPass("brownTest1234");
		user.setAddr1("대전광역시 중구 중앙로 중앙로 76");
		user.setAddr2("영민빌딩 2층 DDIT");
		user.setZipcode("34940");
		user.setReg_dt(new SimpleDateFormat("yyyy-MM-dd").parse("2019-08-08"));
		
		
		/***When***/
		int insertCnt = userDao.insertUser(user);
		

		/***Then***/
		assertEquals(1, insertCnt);
	}
	
	@Test
	public void updateUserTest() throws ParseException {
		/***Given***/
		insertUserTest();
		User user = userDao.getUser(userId);
		user.setUserNm("dao수정테스트");
		
		/***When***/
		int updateCnt = userDao.updateUser(user);
		
		/***Then***/
		assertEquals(1, updateCnt);
		
	}

	
	
}
