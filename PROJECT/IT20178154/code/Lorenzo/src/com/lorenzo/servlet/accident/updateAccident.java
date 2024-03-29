package com.lorenzo.servlet.accident;

import java.io.IOException;
import java.util.InputMismatchException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lorenzo.interfaces.Iaccident;
import com.lorenzo.model.Accident;
import com.lorenzo.services.Saccident;

/**
 * Servlet implementation class UpdateAccident
 */ 
public class updateAccident extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateAccident() {
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
		Accident accident= new Accident();
		Iaccident service  = new Saccident();				
		
		int id  = Integer.parseInt(request.getParameter("id"));
		
		accident.setId(id);
		accident.setVehicleId(request.getParameter("VNumber"));
		accident.setDrivername(request.getParameter("driverName")); 
		accident.setLocation(request.getParameter("Location")); 
		accident.setVehicleType(request.getParameter("type")); 
		accident.setTime(request.getParameter("time"));
		accident.setDate( request.getParameter("date")); 
		
		  
		try {
			
			isTrue = service.updateAccident(accident);
			
			//if return value is true
			if(isTrue == true) {
			  
				RequestDispatcher dispatcher = request.getRequestDispatcher("AccidentManegment.jsp");
				dispatcher.forward(request, response);
			}
			else { 
				RequestDispatcher dispatcher = request.getRequestDispatcher("AccedentCoverage.jsp");
				dispatcher.forward(request, response);
			}
			
		}
		catch ( InputMismatchException  e) {
			e.printStackTrace();
		}
		 
	}

}
