package com.doers.domain;

public class AccountOperate {
	private Long operate_id;
	private String time;
	private BaseDict behave;
	private Account account;
	private Integer doMoeny;
	public Long getOperate_id() {
		return operate_id;
	}
	public void setOperate_id(Long operate_id) {
		this.operate_id = operate_id;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public BaseDict getBehave() {
		return behave;
	}
	public void setBehave(BaseDict behave) {
		this.behave = behave;
	}
	public Integer getDoMoeny() {
		return doMoeny;
	}
	public void setDoMoeny(Integer doMoeny) {
		this.doMoeny = doMoeny;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	
	

}
