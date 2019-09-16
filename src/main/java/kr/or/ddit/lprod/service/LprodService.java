package kr.or.ddit.lprod.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.model.LprodVO;
import kr.or.ddit.lprod.repository.ILprodDao;

@Service
public class LprodService implements ILprodService{

	
	@Resource(name="lprodDao")
	private ILprodDao lprodDao;
	
	/**
	* Method : getLprodList
	* 작성자 : SEM-PC
	* 변경이력 :
	* @return
	* Method 설명 : 제품 그룹 리스트 조회
	*/
	@Override
	public List<LprodVO> getLprodList() {
		List<LprodVO> lprodList = lprodDao.getLprodList();
		return lprodList;
	}

	/**
	* Method : getLprodPagingList
	* 작성자 : SEM-PC
	* 변경이력 :
	* @param sqlSession
	* @param page
	* @return
	* Method 설명 : 제품 그룹 페이징 리스트 조회
	*/
	@Override
	public Map<String, Object> getLprodPagingList(Page page) {
		Map<String, Object> resultMap = new HashMap<String, Object>();
		
		int totalCnt = lprodDao.getLprodTotalCnt();
		
		resultMap.put("lprodList", lprodDao.getLprodPagingList(page));
		resultMap.put("paginationSize", (int)Math.ceil( (double)totalCnt / page.getPageSize()));
		
		return resultMap;
	}

}
