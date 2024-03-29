package com.lorenzo.servlet.vehicle;

import java.io.IOException;
import java.util.InputMismatchException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lorenzo.interfaces.Ivehicle;
import com.lorenzo.model.Vehicle;
import com.lorenzo.services.Svehicle;

/**
 * Servlet implementation class addVehicle
 */
 
public class addVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addVehicle() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isTrue; 
		Vehicle vehicle= new Vehicle();
		Ivehicle service  = new Svehicle();				
		 
		int pass = Integer.parseInt(request.getParameter("noOfPAsengers")); 
		 
		vehicle.setVehicleNumber(request.getParameter("VNumber"));
		vehicle.setNoOfPasenger(pass); 
		vehicle.setAddress(request.getParameter("address")); 
		vehicle.setType(request.getParameter("type")); 
		vehicle.setOwnerName(request.getParameter("ownerName"));  
		vehicle.setStatus("not-assigned");
		  
		try {
			
			isTrue = service.addvehicle(vehicle);
			
			//if return value is true
			if(isTrue == true) {
			  
				RequestDispatcher dispatcher = request.getRequestDispatcher("VehicleManegment.jsp");
				dispatcher.forward(request, response);
			}
			else { 
				RequestDispatcher dispatcher = request.getRequestDispatcher("addVehicle.jsp");
				dispatcher.forward(request, response);
			}
			
		}
		catch ( InputMismatchException  e) {
			e.printStackTrace();
		}
		 
	}

}
