package com.doers.Action;


import java.util.Date;
import java.text.SimpleDateFormat;

import com.doers.Dao.BaseDictDao;
import com.doers.Service.AccountService;
import com.doers.Service.BaseDictService;
import com.doers.domain.Account;
import com.doers.domain.AccountOperate;
import com.doers.domain.BaseDict;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AccountAction extends ActionSupport {
	private AccountService accountService;
	private Integer doneMoney;
	private BaseDictService baseDictService;

	
	public void setBaseDictService(BaseDictService baseDictService) {
		this.baseDictService = baseDictService;
	}


	public Integer getDoneMoney() {
		return doneMoney;
	}


	public void setDoneMoney(Integer doneMoney) {
		this.doneMoney = doneMoney;
	}


	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}


	public String loadingMyAccount()  throws Exception{
		User user = (User) ActionContext.getContext().getSession().get("user");
		Account a = accountService.getAccountByUser(user);
		ActionContext.getContext().put("myAccount", a);
		return "toMyAccountBase";
	}
	public String addDoMoeny() throws Exception{
		User user = (User) ActionContext.getContext().getSession().get("user");
		Account a = accountService.getAccountByUser(user);
		AccountOperate aOperate = new AccountOperate();
		aOperate.setAccount(a);
		Integer mInteger = 0;
		if(doneMoney==20){
			mInteger=22;
		}else if(doneMoney==30){
			mInteger=33;
		}else if(doneMoney==40){
			mInteger=44;
		}else if(doneMoney==50){
			mInteger=55;
		}else if(doneMoney==100){
			mInteger=110;
		}else{mInteger = doneMoney;}
		aOperate.setDoMoeny(mInteger);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	    String pdate = format.format(new Date());
	    aOperate.setTime(pdate);
	    BaseDict baseDict = new BaseDict();
	    baseDict.setDict_id("58");
	    aOperate.setBehave(baseDict);
	    accountService.addAccountOperate(aOperate);
	    return loadingMyAccount();		
	}
	public String payInCash(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		Account a = accountService.getAccountByUser(user);
		ActionContext.getContext().put("myAccount", a);
		return "toPayInCash";
	}
}
