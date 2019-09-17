package kr.or.ddit.user.web;

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
import kr.or.ddit.user.service.IUserService;

@RequestMapping("user/")
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Resource(name = "userService")
	private IUserService userService;
	
	/**
	* Method : userView
	* 작성자 : 박은지
	* 변경이력 :
	* @return
	* Method 설명 : 사용자 상세화면 요청
	*/
	//사용자가 localhost:8081/spring/user/view.do
	@RequestMapping("view.do")
	public String userView() {
		logger.debug("userController.userView()");
		
		return "user/view";
		
		// prefix + viewName + suffix
		// WEB-INF/views/user/view.jsp
	}
	
	/**
	* Method : userList
	* 작성자 : 박은지
	* 변경이력 :
	* @param model
	* @return
	* Method 설명 : 사용자 전체 리스트 조회
	*/
	@RequestMapping(path = "userList", method = RequestMethod.GET)
	public String userList(Model model) {
		model.addAttribute("userList", userService.getUserList());
		
		return "user/userList";
	}
	
	
	/**
	* Method : userListOnlyHalf
	* 작성자 : 박은지
	* 변경이력 :
	* @param model
	* @return
	* Method 설명 : 사용자 리스트 50개 조회
	*/
	@RequestMapping(path = "userListOnlyHalf", method = RequestMethod.GET)
	public String userListOnlyHalf(Model model) {
		model.addAttribute("halfList", userService.getUserListOnlyHalf());
		
		return "user/userListOnlyHalf";
	}
	
	
	
	@RequestMapping(path = "userPagingList", method = RequestMethod.GET)
	public String userPagingList(Model model, @RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int pagesize) {
	//public String userPagingList(Model model, Page page) {
		
		Page p = new Page(page, pagesize);
		model.addAttribute("pageVo", p);
		
		Map<String, Object> resultMap = userService.getUserPagingList(p);
		
		model.addAllAttributes(resultMap);		//맵객체에 있는 모든 필드들을 한번에 넘겨줌 - 하나하나 처리하지 않아도 손쉽게 처리할수있음 
		
		return "user/userPagingList";
	}
	
	
	
}
