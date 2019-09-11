package kr.or.ddit.user.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.user.model.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:kr/or/ddit/config/spring/context-root.xml",
		"classpath:kr/or/ddit/config/spring/context-datasource.xml",
		"classpath:kr/or/ddit/config/spring/context-transaction.xml" })
public class UserServiceTest {

	@Resource(name = "userService")
	private IUserService userService;

	private String userId = "testBROWN";
	
	@Before
	public void setup() {
		userService.deleteUser(userId);
	}
	
	
	@Test
	public void getUserListTest() {
		/*** Given ***/

		/*** When ***/
		List<User> userList = userService.getUserList();

		/*** Then ***/
		assertTrue(userList.size() >= 105);
	}


	/**
	* Method : getUserListOnlyHalfTest
	* 작성자 :
	* 변경이력 :
	* Method 설명 : getUserListOnlyHalf 테스트
	*/
	@Test
	public void getUserListOnlyHalfTest() {
		/***Given***/

		/***When***/
		List<User> userList = userService.getUserListOnlyHalf();

		/***Then***/
		assertEquals(50, userList.size());
	}

	/**
	* Method : getUserTest
	* 작성자 :
	* 변경이력 :
	* Method 설명 : 사용자 정보 조회 테스트
	*/
	@Test
	public void getUserTest() {
		/***Given***/
		String userId = "brown";

		/***When***/
		User userVo = userService.getUser(userId);

		/***Then***/
		assertEquals("브라운", userVo.getUserNm());
		assertEquals("c6347b73d5b1f7c77f8be828ee3e871c819578f23779c7d5e082ae2b36a44", userVo.getPass());
	}
	
	/**
	* Method : getUserPagingListTest
	* 작성자 : PC-05
	* 변경이력 :
	* Method 설명 :사용자 페이징 리스트 조회 테스트
	*/
	@Test
	public void getUserPagingListTest() {
		
		/***Given***/
		Page page = new Page();
		page.setPage(3);
		page.setPageSize(10);
		
		/***When***/
		Map<String, Object> resultMap  = userService.getUserPagingList(page);
		List<User> userlist = (List<User>) resultMap.get("userList");
		int pagenationSize = (Integer)resultMap.get("paginationSize");
		
		/***Then***/
		assertEquals(10, userlist.size());
//		assertEquals("xuserid22", userlist.get(0).getUserId());
		assertEquals(11, pagenationSize);
	}
	
	
	@Test
	public void ceilingTest() {
		/***Given***/
		int totalCnt = 105;
		int pagesize = 10;

		/***When***/
		double paginationSize =  Math.ceil(((double) totalCnt / pagesize)); 

		/***Then***/
		assertEquals(11, (int)paginationSize);
	}
	
	
	@Test
	public void insertUserTest() throws ParseException {
		/***Given***/
		User user = new User();
		user.setUserId("testBROWN");
		user.setUserNm("브라운테스트");
		user.setAlias("곰테스트");
		user.setPass("brownTest1234");
		user.setAddr1("대전광역시 중구 중앙로 중앙로 76");
		user.setAddr2("영민빌딩 2층 DDIT");
		user.setZipcode("34940");
		user.setReg_dt(new SimpleDateFormat("yyyy-MM-dd").parse("2019-08-08"));
		
		
		/***When***/
		int insertCnt = userService.insertUser(user);
		

		/***Then***/
		assertEquals(1, insertCnt);
	}
	
	/**
	* Method : updateUserTest
	* 작성자 : PC-14
	* 변경이력 :
	* Method 설명 : 사용자 정보 수정 테스트
	 * @throws ParseException 
	*/
	@Test
	public void updateUserTest() throws ParseException {
		/***Given***/
		insertUserTest();
		User user = userService.getUser(userId);
		user.setAlias("Service수정테스트");
		
		/***When***/
		int updateCnt = userService.updateUser(user);

		/***Then***/
		assertEquals(1, updateCnt);

	}
}
