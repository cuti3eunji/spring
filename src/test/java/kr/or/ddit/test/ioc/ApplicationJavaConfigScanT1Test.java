package kr.or.ddit.test.ioc;

import static org.junit.Assert.*;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.ImportResource;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kr.or.ddit.user.dao.IUserDao;
import kr.or.ddit.user.service.IUserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = ApplicationJavaConfigScanT1.class)
@WebAppConfiguration
public class ApplicationJavaConfigScanT1Test {
	
	private static final Logger logger = LoggerFactory.getLogger(ApplicationJavaConfigScanT1Test.class);
	
	@Resource(name="userDao")
	private IUserDao userDao;
	
	@Resource(name="userService")
	private IUserService userService;
	
	
	/**
	* Method : javaSpringBeanConfigTest
	* 작성자 : 박은지
	* 변경이력 :
	* Method 설명 : 자바파일을 이용한 스프링 빈 설정 테스트
	*/
	@Test
	public void javaSpringBeanConfigTest() {
		/***Given***/

		/***When***/
		logger.debug("userService.getUserList() : {}", userService.getUserList() );

		/***Then***/
		assertNotNull(userDao);
		assertNotNull(userService);
		
	}

}
