package com.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.ImageIcon;

import com.user.Results;
import com.user.carType;
import com.user.searchPreferences;


/**
 * Servlet implementation class priceServlet
 */
@WebServlet("/priceServlet")
public class priceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public priceServlet() {
    	super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
			
		HttpSession session = request.getSession(true);
		
		
		ArrayList<carType> cars = new ArrayList<carType>();
		carType car1 = new carType(10000, "images/2016%20Chevrolet%20Camaro.jpg", "car model 1");
		carType car2 = new carType(20000, "images/2017%20Lamborghini%20Aventador.jpg", "car model 2");
		carType car3 = new carType(30000, "images/2017%20smart%20fortwo.jpg", "car model 3");
		carType car4 = new carType(40000, "images/2018%20Honda%20Vezel.jpg", "car model 4");
		carType car5 = new carType(50000, "images/2018%20Hyndai%20Tucson.jpg", "car model 5");
		
		cars.add(car1);
		cars.add(car2);
		cars.add(car3);
		cars.add(car4); 
		cars.add(car5);
		
		
		String priceSliderInput = request.getParameter("range");
		int sliderPriceToInteger = Integer.parseInt(priceSliderInput);
		System.out.println("You chose a range of " + sliderPriceToInteger);
		
		//create new array for results to go into to print multiple pictures if results are more than one 
		ArrayList<Results> results = new ArrayList<Results>();	
		
		
		
		
		//comparing slider input with the prices within array carType 
		for (int i = 0; i < cars.size(); i++) { 
			int carCompare = cars.get(i).getPrice();
			String image = cars.get(i).getImage().toString();
			if (carCompare <= sliderPriceToInteger) {
				//Results result = new Results(image); 
				//results.add(result); 
				//for(int j = 0; j<results.size(); j++) {
					//String imageURL = results.get(j).getImage();
					//request.setAttribute("image", imageURL);
				System.out.println("You got matching results of " + image);
				request.setAttribute("image", image);
				}
				
				//System.out.println("You got matching results of " + image);
				//request.setAttribute("image", image);
		}
	
				 
		
		
		
		session.setAttribute("cars", cars);
		
		RequestDispatcher rs = request.getRequestDispatcher("price.jsp");
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
