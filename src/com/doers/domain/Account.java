package com.doers.domain;

import java.util.Set;


public class Account {
	private Long account_id;
	private Long account_user_id;
	private Integer wallet1;
	private Integer wallet2;
	private Set<AccountOperate> behaveList;
	public Long getAccount_id() {
		return account_id;
	}
	public void setAccount_id(Long account_id) {
		this.account_id = account_id;
	}
	public Long getAccount_user_id() {
		return account_user_id;
	}
	public void setAccount_user_id(Long account_user_id) {
		this.account_user_id = account_user_id;
	}
	public Integer getWallet1() {
		return wallet1;
	}
	public void setWallet1(Integer wallet1) {
		this.wallet1 = wallet1;
	}
	public Integer getWallet2() {
		return wallet2;
	}
	public void setWallet2(Integer wallet2) {
		this.wallet2 = wallet2;
	}
	public Set<AccountOperate> getBehaveList() {
		return behaveList;
	}
	public void setBehaveList(Set<AccountOperate> behaveList) {
		this.behaveList = behaveList;
	}	
	

}
