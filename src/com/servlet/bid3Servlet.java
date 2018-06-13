package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.bid3;

/**
 * Servlet implementation class bid3
 */
@WebServlet("/bid3Servlet")
public class bid3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bid3Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		bid3 bid3 = new bid3();
		bid3.setBidding3Price(42000); 
		String bid3Input = request.getParameter("bid3");
		int bid3InputInt = Integer.parseInt(bid3Input);
		
		//compare the user input bit with the minimum bid price
		if (bid3InputInt >= bid3.getBidding3Price()) { 
			bid3.setBidding3Price(bid3InputInt);
			bid3.setBid3Success("You placed a bid of " + bid3.getBidding3Price());
			System.out.println(bid3.getBid3Success());
			
		}
		else { 
			bid3.setBid3Error("Minimum bidding price is $42,000. You entered " + bid3InputInt);
			System.out.println(bid3.getBid3Error());
			
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("bid3", bid3);
		
		RequestDispatcher rs = request.getRequestDispatcher("bid3.jsp");
		rs.forward(request,response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
