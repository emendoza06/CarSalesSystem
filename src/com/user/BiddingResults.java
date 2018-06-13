package com.user;

import java.util.ArrayList;

public class BiddingResults {
	
	private String carsBiddedOn; 
	public ArrayList<BiddingResults> biddedOnCars = new ArrayList<BiddingResults>();
	/**
	 * @return the carsBiddedOn
	 */
	
	public BiddingResults(String carsBiddedOn) { 
		
	}
	
	public String getCarsBiddedOn() {
		return carsBiddedOn;
	}
	/**
	 * @param carsBiddedOn the carsBiddedOn to set
	 */
	public void setCarsBiddedOn(String carsBiddedOn) {
		this.carsBiddedOn = carsBiddedOn;
	}
	/**
	 * @return the biddedOnCars
	 */
	public ArrayList<BiddingResults> getBiddedOnCars() {
		return biddedOnCars;
	}
	/**
	 * @param biddedOnCars the biddedOnCars to set
	 */
	public void setBiddedOnCars(ArrayList<BiddingResults> biddedOnCars) {
		this.biddedOnCars = biddedOnCars;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BiddingResults [carsBiddedOn=" + carsBiddedOn + ", biddedOnCars=" + biddedOnCars + "]";
	}
	
	
	

}
