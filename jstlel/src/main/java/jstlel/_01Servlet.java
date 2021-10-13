package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/01")
public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//값 넘기기
		int iVal =10;
		long lVal =10;
		float fVal =10;
		boolean bVal =true;
		String sVal ="오아아아아아아ㅏ아아아";
		
		//객체ㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔㅔ
		Object obj = null;
		
		UserVo vo = new UserVo();
		vo.setNo(1L);
		vo.setName("다미");
		
		//map
		Map<String, Object> map = new HashMap<String, Object>()	;
		map.put("ival", iVal);
		map.put("lval", lVal);
		map.put("fval", fVal);
		map.put("bval", bVal);
		map.put("sval", sVal);
		
		request.setAttribute("iVal", iVal);
		request.setAttribute("lVal", lVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("sVal", sVal);
		request.setAttribute("obj", obj);
		request.setAttribute("vo", vo);
		request.setAttribute("map", map);
		
		request.getRequestDispatcher("WEB-INF/views/01.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
