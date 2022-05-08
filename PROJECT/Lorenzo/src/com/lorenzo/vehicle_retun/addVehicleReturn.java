package com.lorenzo.vehicle_retun;

import java.io.IOException;
import java.util.InputMismatchException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addVehicleReturn
 */ 
public class addVehicleReturn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addVehicleReturn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isTrue; 
		VehicleReturn vehicleReturn = new VehicleReturn();
		IVehicleReturn service  = new VehicleReturnImp();				

		int contactNumber = Integer.parseInt(request.getParameter("tel"));
		
		vehicleReturn.setVehicleNumber(request.getParameter("vNumber"));
		vehicleReturn.setCusName(request.getParameter("cusName")); 
		vehicleReturn.setEmail(request.getParameter("email")); 
		vehicleReturn.setContact(contactNumber); 
		vehicleReturn.setPickupDate(request.getParameter("pickDate"));
		vehicleReturn.setReturnDate( request.getParameter("returnDate")); 
		vehicleReturn.setReturnTime( request.getParameter("dropTime")); 
		vehicleReturn.setVehicleType( request.getParameter("vType")); 
		vehicleReturn.setServiceType( request.getParameter("sType")); 
		
		try {
			
			isTrue = service.addVehicleReturn(vehicleReturn);
			if(isTrue == true) { 
				RequestDispatcher dispatcher = request.getRequestDispatcher("VehicleReturnManagment.jsp");
				dispatcher.forward(request, response);
			}
			else { 
				RequestDispatcher dispatcher = request.getRequestDispatcher("addVehicleReturn.jsp");
				dispatcher.forward(request, response);
			}
			
		}
		catch ( InputMismatchException  e) {
			e.printStackTrace();
		}
	}

}
