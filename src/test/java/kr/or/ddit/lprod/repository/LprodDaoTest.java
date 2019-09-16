package kr.or.ddit.lprod.repository;

import static org.junit.Assert.assertEquals;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.or.ddit.config.test.RootTestConfig;
import kr.or.ddit.lprod.model.LprodVO;
import kr.or.ddit.lprod.model.ProdVO;

public class LprodDaoTest extends RootTestConfig{

	@Resource(name="lprodDao")
	private ILprodDao lprodDao;
	
	@Resource(name="prodDao")
	private IProdDao prodDao;
	

	private static final Logger logger = LoggerFactory.getLogger(LprodDaoTest.class);
	
	/**
	* Method : getLprodListTest
	* 작성자 : PC-14
	* 변경이력 :
	* Method 설명 : getLprodList 테스트
	*/
	@Test
	public void getLprodListTest() {
		/***Given***/

		/***When***/
		List<LprodVO> lprodList = lprodDao.getLprodList();

		/***Then***/
		assertEquals(9, lprodList.size());
	}
	
	@Test
	public void getProdListTest() {
		/***Given***/

		/***When***/
		List<ProdVO> prodList = prodDao.getProdList("P101");

		/***Then***/
		assertEquals(6, prodList.size());
	}
	
}
