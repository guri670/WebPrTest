package mvc.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mvc.dao.BoardDao;
import mvc.vo.BoardVo;
import mvc.vo.Criteria;
import mvc.vo.PageMaker;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/BoardController")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String location;
	public BoardController(String location) {
		this.location = location;
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paramMethod = "";
		String url = "";
		
		if (location.equals("boardList.aws")) {
			
			String page =  request.getParameter("page");
			if (page == null) page = "1";
			int pageInt = Integer.parseInt(page);
			
			Criteria cri = new Criteria();
			cri.setPage(pageInt);
			
			PageMaker pm = new PageMaker();
			pm.setCri(cri);
			
			BoardDao bd = new BoardDao();
			int boardCnt = bd.boardTotalCount(cri);
			pm.setTotalCnt(boardCnt);
			
			ArrayList<BoardVo> alist = bd.boardSelectAll();
			
			request.setAttribute("alist", alist);
			request.setAttribute("pm", pm);
			
			paramMethod = "F";
			url = "/board/boardList.jsp";
		}
		
		if (paramMethod.equals("F")) {
			RequestDispatcher rd = request.getRequestDispatcher(url);
			rd.forward(request, response);
		} else if (paramMethod.equals("S")) {
			response.sendRedirect(url);
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
