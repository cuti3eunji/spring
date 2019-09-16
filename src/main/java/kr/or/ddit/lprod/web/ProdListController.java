package kr.or.ddit.lprod.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.lprod.model.ProdVO;
import kr.or.ddit.lprod.repository.IProdDao;
import kr.or.ddit.lprod.repository.ProdDao;

/**
 * Servlet implementation class ProdListController
 */
@WebServlet("/prodList")
public class ProdListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private IProdDao prodDao;
    
    @Override
    public void init() throws ServletException {
    	prodDao = new ProdDao();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lprod_gu = request.getParameter("lprod_gu");
		
		List<ProdVO> prodList = prodDao.getProdList(lprod_gu);
		request.setAttribute("prodList", prodList);
		
		request.getRequestDispatcher("/prod/prodList.jsp").forward(request, response);	
	}
}
