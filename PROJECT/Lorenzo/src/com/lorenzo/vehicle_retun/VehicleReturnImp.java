package com.lorenzo.vehicle_retun;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement; 
import com.lorenzo.utill.DBConnection;

public class VehicleReturnImp implements IVehicleReturn{

	private static Connection connection;
	private static Statement statement;
	private static boolean RETURN_VALUE = false;

	/**
	 * add new vehicle return details to database
	 * @param vehicleReturn
	 * @return boolean
	 */
	@Override
	public boolean addVehicleReturn(VehicleReturn vehicleReturn) { 
		try { 
			connection = (Connection) DBConnection.getConnection();
			statement = (Statement) connection.createStatement();

			String sql = " INSERT INTO  returnVehicle  "
					+ "(`vehicleNumber`,`cusName`, `cusMail`, `cusTel`, `pickDate`, `returnDate`, `dropTime`,`vehicleType`,`serviceType`) VALUES"
					+ " ('"+vehicleReturn.getVehicleNumber()+"', '"+vehicleReturn.getCusName()+"', '"+vehicleReturn.getEmail()+"', "
					+ "'"+vehicleReturn.getContact()+"', '"+vehicleReturn.getPickupDate()+"' , '"+vehicleReturn.getReturnDate()+"',"
					+ "'"+vehicleReturn.getReturnTime()+"','"+vehicleReturn.getVehicleType()+"','"+vehicleReturn.getServiceType()+"') ";

			int result = statement.executeUpdate(sql);

			if(result > 0) 
				RETURN_VALUE = true;
			else 
				RETURN_VALUE = false; 

		}catch(SQLException  e) {
			e.printStackTrace();
		} finally { 
			try {
				if(statement != null) 
					statement.close();  
				if (connection != null) 
					connection.close(); 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		return RETURN_VALUE;
	}

	/**
	 * delete exist vehicle return details
	 * @param id
	 * @return boolean
	 */
	@Override
	public boolean deleteReturnVehicle(int id) { 
		try { 
			connection = (Connection) DBConnection.getConnection();
			statement =  (Statement) connection.createStatement(); 

			String sql = "DELETE FROM  returnVehicle WHERE (`id` = '"+id+"');"; 

			int result =  statement.executeUpdate(sql); 

			if (result > 0) 
				RETURN_VALUE = true;
			else 
				RETURN_VALUE = false;

		}catch(Exception e) {
			e.printStackTrace();
		}finally { 
			try {
				if(statement != null) 
					statement.close(); 
				if (connection != null) 
					connection.close(); 
			} catch ( SQLException e) {
				e.printStackTrace();
			}
		} 
		return RETURN_VALUE;
	}

	/**
	 * update vehicle return details
	 * @param vehicleReturn
	 * @return boolean	
	 */
	@Override
	public boolean updateVehicleReturn(VehicleReturn vehicleReturn) { 
		try {
			connection = (Connection) DBConnection.getConnection();
			statement =  (Statement) connection.createStatement();

			String sql ="UPDATE  returnVehicle SET  "
					+ "`vehicleNumber` = '"+vehicleReturn.getVehicleNumber()+"',"
					+ " `cusName` = '"+vehicleReturn.getCusName()+"',"
					+ " `cusMail` = '"+vehicleReturn.getEmail()+"',"
					+ " `cusTel` = '"+vehicleReturn.getContact()+"',"
					+ " `pickDate` = '"+vehicleReturn.getPickupDate()+"'"
					+ ", `returnDate` = '"+vehicleReturn.getReturnDate()+"'"
					+ ", `dropTime` = '"+vehicleReturn.getReturnDate()+"'"
					+ ", `vehicleType` = '"+vehicleReturn.getVehicleType()+"'"
					+ ", `serviceType` = '"+vehicleReturn.getServiceType  ()+"'"
					+ "  WHERE (`id` = '"+vehicleReturn.getId()+"');";

			int result =  statement.executeUpdate(sql);

			if(result>0) 
				RETURN_VALUE = true;	
			else 
				RETURN_VALUE = false;

		}catch(SQLException | NullPointerException  e) {  
			e.printStackTrace();    
		} finally { 
			try {
				if(statement != null) 
					statement.close();
				if (connection != null) 
					connection.close();
			} catch ( SQLException e) {
				e.printStackTrace();
			}
		} 
		return RETURN_VALUE;
	}

	/**
	 * get vehicle return list
	 * @return List<VehicleReturn>
	 */
	@Override
	public List<VehicleReturn> listVehicleReturn() {
		ArrayList<VehicleReturn> list = new ArrayList<VehicleReturn>();
		try {
	            connection = (Connection) DBConnection.getConnection();
	            statement =  (Statement) connection.createStatement();
	            
	            String sql = "SELECT * FROM  returnVehicle";
	            
	            PreparedStatement statement =  connection.prepareStatement(sql);       
	            ResultSet result = statement.executeQuery();
	
	            while(result.next()){	 
	            	VehicleReturn vehicleReturn = new VehicleReturn(); 
	            	vehicleReturn.setId(result.getInt("id"));
					vehicleReturn.setVehicleNumber(result.getString("vehicleNumber"));
					vehicleReturn.setCusName (result.getString("cusName"));
					vehicleReturn.setEmail(result.getString("cusMail")); 
					vehicleReturn.setContact(result.getInt("cusTel"));
					vehicleReturn.setPickupDate(result.getString("pickDate")); 
					vehicleReturn.setReturnDate(result.getString("returnDate")); 
					vehicleReturn.setReturnTime(result.getString("dropTime")); 
					vehicleReturn.setVehicleType(result.getString("vehicleType")); 
					vehicleReturn.setServiceType(result.getString("serviceType")); 
	            	list.add(vehicleReturn);
	            }
	         
	        }catch(Exception e) {
	        	e.printStackTrace();
	        } finally {
				try {
					if (connection != null) 
						connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
	        }
	        return list;
	}

	/**
	 * get single vehicle return details
	 * @param id
	 * @return VEhicleReturn
	 */
	@Override
	public VehicleReturn getVehicleReturn(int id) {
		VehicleReturn vehicleReturn = new VehicleReturn();  
		try {

			connection = (Connection) DBConnection.getConnection();
			statement =  (Statement) connection.createStatement();

			String sql = "SELECT * FROM  returnVehicle  WHERE id = '"+id+"'";
			
			PreparedStatement statement =  connection.prepareStatement(sql);
			ResultSet result = statement.executeQuery();

			while(result.next()){
				vehicleReturn.setId(result.getInt("id"));
				vehicleReturn.setVehicleNumber(result.getString("vehicleNumber"));
				vehicleReturn.setCusName (result.getString("cusName"));
				vehicleReturn.setEmail(result.getString("cusMail")); 
				vehicleReturn.setContact(result.getInt("cusTel"));
				vehicleReturn.setPickupDate(result.getString("pickDate")); 
				vehicleReturn.setReturnDate(result.getString("returnDate")); 
				vehicleReturn.setReturnTime(result.getString("dropTime")); 
				vehicleReturn.setVehicleType(result.getString("vehicleType")); 
				vehicleReturn.setServiceType(result.getString("serviceType")); 
			}

		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) 
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return vehicleReturn;
	}

}
