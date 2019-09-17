package kr.or.ddit.lprod.web;

import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.common.model.Page;
import kr.or.ddit.lprod.repository.IProdDao;
import kr.or.ddit.lprod.service.ILprodService;

@RequestMapping("lprod/")
@Controller
public class LprodController {
	
	private static final Logger logger = LoggerFactory.getLogger(LprodController.class);
	
	@Resource(name = "lprodService")
	private ILprodService lprodService;
	
	@Resource(name = "prodDao")
	private IProdDao prodDao;
	
	
	/**
	* Method : lprodList
	* 작성자 : 박은지
	* 변경이력 :
	* @param model
	* @return
	* Method 설명 : 제품 그룹 전체 리스트
	*/
	@RequestMapping(path = "lprodList", method = RequestMethod.GET)
	public String lprodList(Model model) {
		
		model.addAttribute("lprodList", lprodService.getLprodList());
		
		return "lprod/lprodList";
	}
	
	
	/**
	* Method : prodList
	* 작성자 : 박은지
	* 변경이력 :
	* @param model
	* @param lprod_gu
	* @return
	* Method 설명 : 제품 그룹별 상품 상세 리스트
	*/
	@RequestMapping(path = "prodList", method = RequestMethod.GET)
	public String prodList(Model model, String lprod_gu) {
		
		model.addAttribute("prodList", prodDao.getProdList(lprod_gu));
		
		return "prod/prodList";
	}
	
	
	/**
	* Method : lprodPagingList
	* 작성자 : 박은지
	* 변경이력 :
	* @param model
	* @param page
	* @param pagesize
	* @return
	* Method 설명 : 제품 그룹 리스트 - 페이징
	*/
	@RequestMapping(path = "lprodPagingList", method = RequestMethod.GET)
	public String lprodPagingList(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5") int pagesize) {
//	public String lprodPagingList(Model model, Page page) {
		
		Page p = new Page(page, pagesize);
		
		model.addAttribute("pageVo", p);
		
		Map<String, Object> resultMap = lprodService.getLprodPagingList(p);
		
		model.addAllAttributes(resultMap);		//맵객체에 있는 모든 필드들을 한번에 넘겨줌 - 하나하나 처리하지 않아도 손쉽게 처리할수있음 
		
		return "lprod/lprodPagingList";
		
	}
	
	
	
}
