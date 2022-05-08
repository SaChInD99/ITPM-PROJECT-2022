package com.lorenzo.interfaces;

import java.util.ArrayList;

import com.lorenzo.model.Maintaine;
  

public interface Imaintain {
	public ArrayList<Maintaine> getMaintaineList();
	public ArrayList<Maintaine> getMaintaineByVehicleId(String id);
	public Maintaine getMaintaine(int id);
	public boolean addMaintaine(Maintaine maintaine);
	public boolean updateMaintaine (Maintaine maintaine);
	public boolean deleteMaintaine(int id);
}
