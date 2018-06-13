package com.user;

import java.util.ArrayList;

public class Results {
	
	private String image; 
	public ArrayList<Results> results = new ArrayList<Results>();
	Object result;
	
	
	/**
	 * @return the results
	 */
	public ArrayList<Results> getResults() {
		return results;
	}

	/**
	 * @param results the results to set
	 */
	public void setResults(ArrayList<Results> results) {
		this.results = results;
	}

	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	public Results(String image) { 
		
	}
	
	@Override
	public String toString() {
		return "carType [cars=" + image + "]";
	}
	

}
