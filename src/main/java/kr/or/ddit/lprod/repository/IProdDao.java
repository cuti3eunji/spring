package kr.or.ddit.lprod.repository;

import java.util.List;

import kr.or.ddit.lprod.model.ProdVO;

public interface IProdDao {
	
	/**
	* Method : getProdList
	* 작성자 : SEM-PC
	* 변경이력 :
	* @param lprod_gu
	* @return
	* Method 설명 : 제품 리스트 조회
	*/
	List<ProdVO> getProdList(String lprod_gu);
}
