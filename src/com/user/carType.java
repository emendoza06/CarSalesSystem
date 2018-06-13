package com.user;

import java.util.ArrayList;

public class carType {
	
	private int price; 
	private String image; 
	private String model;
	public ArrayList<carType> cars = new ArrayList<carType>();
	
		
	
	
	/**
	 * @return the results
	 */



	public carType(int price, String image, String model) {
		this.price = price; 
		this.image = image; 
		this.model = model;
				
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



	/**
	 * @return the model
	 */
	public String getModel() {
		return model;
	}



	/**
	 * @param model the model to set
	 */
	public void setModel(String model) {
		this.model = model;
	}



	/**
	 * @return the cars
	 */
	public ArrayList<carType> getCars() {
		return cars;
	}



	/**
	 * @param cars the cars to set
	 */
	public void setCars(ArrayList<carType> cars) {
		this.cars = cars;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "carType [cars=" + price + "]" +  "carType [cars=" + image + "]" + "carType [cars=" + model + "]";
	}
	
	

}




