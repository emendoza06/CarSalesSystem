package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.bid2;
import com.user.searchPreferences;

/**
 * Servlet implementation class bid2Servlet
 */
@WebServlet("/bid2Servlet")
public class bid2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bid2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		bid2 bid2 = new bid2();
		bid2.setBidding2Price(16000); 
		String bid2Input = request.getParameter("bid2");
		int bid2InputInt = Integer.parseInt(bid2Input);
		
		//compare the user input bit with the minimum bid price
		if (bid2InputInt >= bid2.getBidding2Price()) { 
			bid2.setBidding2Price(bid2InputInt);
			bid2.setBid2Success("You placed a bid of " + bid2.getBidding2Price());
			System.out.println(bid2.getBid2Success());
			
		}
		else { 
			bid2.setBid2Error("Minimum bidding price is $16,000. You entered " + bid2InputInt);
			System.out.println(bid2.getBid2Error());
			
		}
		HttpSession session = request.getSession(true);
		session.setAttribute("bid2", bid2);
		
		RequestDispatcher rs = request.getRequestDispatcher("bid2.jsp");
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
