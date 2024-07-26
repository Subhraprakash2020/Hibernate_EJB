package com.java.payment;

public class Message {
	private String companyName;
	private String orderNumber;
	private String product;
	private String gst;

	public String getCompanyName() {
		return companyName;
	}

	public String setCompanyName(String companyName) {
		return this.companyName = companyName;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

}
