package com.sds.icto.mysite.action.board;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sds.icto.mysite.dao.BoardDAO;
import com.sds.icto.mysite.vo.BoardVO;
import com.sds.icto.web.Action;

public class boardDetailAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ClassNotFoundException, ServletException,
			IOException {
		String no = request.getParameter("no");
		
		
		
		BoardDAO dao = new BoardDAO();
		
		dao.updateViewC(Integer.parseInt(no));
		
		BoardVO vo = dao.boardDetail(Integer.parseInt(no));
		
		request.setAttribute("board", vo);
		request.getRequestDispatcher("/views/board/boardDetail.jsp").forward(request, response);
		
	}

}
