package com.lorenzo.vehicle_retun;

import java.util.List;

public interface IVehicleReturn {
	public boolean addVehicleReturn(VehicleReturn vehicleReturn);
	public boolean deleteReturnVehicle(int id);
	public boolean updateVehicleReturn(VehicleReturn vehicleReturn);
	public List<VehicleReturn> listVehicleReturn();
	public VehicleReturn getVehicleReturn(int id); 
}
