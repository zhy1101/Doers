package com.doers.Action;


import com.doers.Service.AccountService;
import com.doers.domain.Account;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AccountAction extends ActionSupport {
	private AccountService accountService;

	
	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}


	public String loadingMyAccount(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		Account a = accountService.getAccountByUser(user);
		ActionContext.getContext().put("myAccount", a);
		return "toMyAccountBase";
	}

}
