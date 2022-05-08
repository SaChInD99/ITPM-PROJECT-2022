package com.lorenzo.servlet.accident;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lorenzo.interfaces.Iaccident;
import com.lorenzo.interfaces.Ivehicle;
import com.lorenzo.services.Saccident;
import com.lorenzo.services.Svehicle;

/**
 * Servlet implementation class deleteAccident
 */ 
public class deleteAccident extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteAccident() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt( request.getParameter("id"));
		// create boolean variable for get out put of query
		boolean isTrue;
		
		Iaccident service = new Saccident();
		
		
		//call function
		try {
			isTrue = service.deleteAccident(id) ;
			
			if(isTrue == true) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("AccidentManegment.jsp");
				dispatcher.forward(request, response);
				
			}
			else { 
				 
				 
				RequestDispatcher dispatcher = request.getRequestDispatcher("AccidentManegment.jsp");
				dispatcher.forward(request, response);
				
			}
		}
		catch (NullPointerException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
