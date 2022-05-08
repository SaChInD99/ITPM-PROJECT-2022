package com.lorenzo.interfaces;

import java.util.ArrayList;

import com.lorenzo.model.Rating;

public interface Irating {
	public ArrayList<Rating> getRatingList();
	public Rating getRating(int id);
	public boolean addRating(Rating rating);
	public boolean updateRating (Rating rating);
	public boolean deleteRating(int id);
}
