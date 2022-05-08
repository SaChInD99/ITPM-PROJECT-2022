package com.lorenzo.interfaces;

import java.util.ArrayList;

import com.lorenzo.model.Accident;
 

public interface Iaccident {
	public ArrayList<Accident> getAccidentList();
	public Accident getAccident(int id);
	public boolean addAccident(Accident accident);
	public boolean updateAccident (Accident accident);
	public boolean deleteAccident(int id);
}
