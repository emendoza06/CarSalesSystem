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

import com.user.carType;

/**
 * Servlet implementation class modelServlet
 */
@WebServlet("/modelServlet")
public class modelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public modelServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		
		
		ArrayList<carType> cars = new ArrayList<carType>();
		carType car1 = new carType(10000, "images/2016%20Chevrolet%20Camaro.jpg", "Chevrolet");
		carType car2 = new carType(20000, "images/2017%20Lamborghini%20Aventador.jpg", "Lamborgini");
		carType car3 = new carType(30000, "images/2017%20smart%20fortwo.jpg", "Smart");
		carType car4 = new carType(40000, "images/2018%20Honda%20Vezel.jpg", "Honda");
		carType car5 = new carType(50000, "images/2018%20Hyndai%20Tucson.jpg", "Hyndai");
		
		cars.add(car1);
		cars.add(car2);
		cars.add(car3);
		cars.add(car4); 
		cars.add(car5);
				
		String userModelInput = request.getParameter("model");
		System.out.println(userModelInput);
		
		for (int i = 0; i < cars.size(); i++) { 
			String modelName = cars.get(i).getModel().toString(); 
			String image = cars.get(i).getImage().toString();
			//match comparison
			if(modelName.equals(userModelInput)) { 
				//String match =cars.get(i).getModel();
				System.out.println(image);
				request.setAttribute("image", image);
				
			}

		}
		
		
		session.setAttribute("cars", cars);
		
		RequestDispatcher rs = request.getRequestDispatcher("model.jsp");
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
