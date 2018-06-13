package com.user;

import java.util.ArrayList;

public class searchPreferences{
	private int price;
	private int biddingPrice;
	String bidError; 
	String bidSuccess;
	
	
	
	
	/*set carDetails for each car. Include price, String of image url, String of car type */
	


	/**
	 * @return the bidSuccess
	 */
	public String getBidSuccess() {
		return bidSuccess;
	}

	/**
	 * @param bidSuccess the bidSuccess to set
	 */
	public void setBidSuccess(String bidSuccess) {
		this.bidSuccess = bidSuccess;
	}

	/**
	 * @return the bidError
	 */
	public String getBidError() {
		return bidError;
		
	}

	/**
	 * @param bidError the bidError to set
	 */
	public void setBidError(String bidError) {
		this.bidError = bidError;
	}

	/**
	 * @return the biddingPrice
	 */
	public int getBiddingPrice() {
		return biddingPrice;
	}

	/**
	 * @param biddingPrice the biddingPrice to set
	 */
	public void setBiddingPrice(int biddingPrice) {
		this.biddingPrice = biddingPrice;
	}

	/**
	 * @return the price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(int price) {
		this.price = price;
	}
	
	public searchPreferences() {
		
	}
	
	
	
}
