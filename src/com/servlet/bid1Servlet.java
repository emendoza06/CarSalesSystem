package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.BiddingResults;
import com.user.Results;
import com.user.carType;
import com.user.searchPreferences;

/**
 * Servlet implementation class bidServlet
 */
@WebServlet("/bid1Servlet")
public class bid1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public bid1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		
//get the user input bid and the set bidding price
		
		
		searchPreferences bid = new searchPreferences();
		bid.setBiddingPrice(30000); 
		String bidInput = request.getParameter("bid");
		int bidInputInt = Integer.parseInt(bidInput);
		
		//compare the user input bit with the minimum bid price
		if (bidInputInt >= bid.getBiddingPrice()) { 
			bid.setBiddingPrice(bidInputInt);
			bid.setBidSuccess("You placed a bid of " + "for Jeep Grand Cheeroke " + bid.getBiddingPrice());
			System.out.println(bid.getBidSuccess());
			
		
		}
		else { 
			bid.setBidError("Minimum bidding price is $30,000. You entered " + bidInputInt);
			System.out.println(bid.getBidError());
			
		}
		
		
		
		HttpSession session = request.getSession(true);
		session.setAttribute("bid", bid);
		
		RequestDispatcher rs = request.getRequestDispatcher("bid1.jsp");
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
