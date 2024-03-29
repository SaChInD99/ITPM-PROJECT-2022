package com.lorenzo.vehicle_retun;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteVehicleReturn
 */ 
public class deleteVehicleReturn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteVehicleReturn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean isTrue;
		int id = Integer.parseInt( request.getParameter("id"));		
		IVehicleReturn service = new VehicleReturnImp();
		 
		try {
			isTrue = service.deleteReturnVehicle(id) ; 
			if(isTrue == true) { 
				RequestDispatcher dispatcher = request.getRequestDispatcher("VehicleReturnManagment.jsp");
				dispatcher.forward(request, response); 
			}
			else {  
				RequestDispatcher dispatcher = request.getRequestDispatcher("VehicleReturnManagment.jsp");
				dispatcher.forward(request, response); 
			}
		}
		catch (NullPointerException e) {
			e.printStackTrace();
		}
	} 

}
