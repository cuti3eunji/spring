package kr.or.ddit.lprod.repository;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.or.ddit.lprod.model.ProdVO;

@Repository
public class ProdDao implements IProdDao {
	
	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSession;
	
	/**
	* Method : getProdList
	* 작성자 : SEM-PC
	* 변경이력 :
	* @param lprod_gu
	* @return
	* Method 설명 :제품 리스트 조회
	*/
	@Override
	public List<ProdVO> getProdList(String lprod_gu) {
		
		List<ProdVO> prodList = sqlSession.selectList("getProdList", lprod_gu);
		
		return prodList;
	}

}
