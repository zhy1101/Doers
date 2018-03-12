package com.doers.domain;

public class Order {
	private String orderId;
	private User customerUser;
	private User serverUser;
	private Server server;
	private String talkTimeStart;
	private String talkTimeEnd;
	private String serverTimeStart;
	private String serverTimeEnd;
	private BaseDict orderState;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public User getCustomerUser() {
		return customerUser;
	}
	public void setCustomerUser(User customerUser) {
		this.customerUser = customerUser;
	}
	public User getServerUser() {
		return serverUser;
	}
	public void setServerUser(User serverUser) {
		this.serverUser = serverUser;
	}
	public Server getServer() {
		return server;
	}
	public void setServer(Server server) {
		this.server = server;
	}
	public String getTalkTimeStart() {
		return talkTimeStart;
	}
	public void setTalkTimeStart(String talkTimeStart) {
		this.talkTimeStart = talkTimeStart;
	}
	public String getTalkTimeEnd() {
		return talkTimeEnd;
	}
	public void setTalkTimeEnd(String talkTimeEnd) {
		this.talkTimeEnd = talkTimeEnd;
	}
	public String getServerTimeStart() {
		return serverTimeStart;
	}
	public void setServerTimeStart(String serverTimeStart) {
		this.serverTimeStart = serverTimeStart;
	}
	public String getServerTimeEnd() {
		return serverTimeEnd;
	}
	public void setServerTimeEnd(String serverTimeEnd) {
		this.serverTimeEnd = serverTimeEnd;
	}
	public BaseDict getOrderState() {
		return orderState;
	}
	public void setOrderState(BaseDict orderState) {
		this.orderState = orderState;
	}
}
