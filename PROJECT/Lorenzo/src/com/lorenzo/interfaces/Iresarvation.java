package com.lorenzo.interfaces;

import java.util.ArrayList;

import com.lorenzo.model.Resarvation;
  

public interface Iresarvation {
	public ArrayList<Resarvation> getResarvationList();
	public Resarvation getResarvation(int id); 
	public ArrayList<Resarvation> getResarvationByUserId(int userId);
	public ArrayList<Resarvation> getResarvationByStatus(String status);
	public boolean addResarvation(Resarvation resarvation);
	public boolean updateResarvation (Resarvation resarvation);
	public boolean deleteResarvation(int id);
	public boolean clangeResarvationStatus(int id ,String status);
}
