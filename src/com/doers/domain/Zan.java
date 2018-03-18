package com.doers.domain;

public class Zan {
	private String zan_id;
	
	private Production zan_pro;
	private User zan_user;
	
	
	public String getZan_id() {
		return zan_id;
	}
	public void setZan_id(String zan_id) {
		this.zan_id = zan_id;
	}
	public Production getZan_pro() {
		return zan_pro;
	}
	public void setZan_pro(Production zan_pro) {
		this.zan_pro = zan_pro;
	}
	public User getZan_user() {
		return zan_user;
	}
	public void setZan_user(User zan_user) {
		this.zan_user = zan_user;
	}
	

}
