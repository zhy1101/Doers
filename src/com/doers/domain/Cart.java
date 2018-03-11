package com.doers.domain;

public class Cart {
	private Long cart_item_id;
	private Server cart_item;
	private User cart_user;
	public Long getCart_item_id() {
		return cart_item_id;
	}
	public void setCart_item_id(Long cart_item_id) {
		this.cart_item_id = cart_item_id;
	}
	public Server getCart_item() {
		return cart_item;
	}
	public void setCart_item(Server cart_item) {
		this.cart_item = cart_item;
	}
	public User getCart_user() {
		return cart_user;
	}
	public void setCart_user(User cart_user) {
		this.cart_user = cart_user;
	}

}
