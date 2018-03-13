package com.doers.Action;


import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;

import com.doers.Dao.BaseDictDao;
import com.doers.Service.AccountService;
import com.doers.Service.BaseDictService;
import com.doers.Service.ServerService;
import com.doers.domain.Account;
import com.doers.domain.AccountOperate;
import com.doers.domain.BaseDict;
import com.doers.domain.Cart;
import com.doers.domain.Server;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AccountAction extends ActionSupport {
	private AccountService accountService;
	private Integer doneMoney;
	private BaseDictService baseDictService;
	private String serverId;
	private ServerService serverService;
	private Long accountId;
	
	
	
	public Long getAccountId() {
		return accountId;
	}


	public void setAccountId(Long accountId) {
		this.accountId = accountId;
	}


	public void setServerService(ServerService serverService) {
		this.serverService = serverService;
	}


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
	

	public String getServerId() {
		return serverId;
	}


	public void setServerId(String serverId) {
		this.serverId = serverId;
	}


	public String loadingMyAccount()  throws Exception{
		User user = (User) ActionContext.getContext().getSession().get("user");
		Account a = accountService.getAccountByUser(user);
		List<AccountOperate> operateList = accountService.get5AccountOperateByAccount(a);
		ActionContext.getContext().put("myAccount", a);
		ActionContext.getContext().put("operateList", operateList);
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
        BaseDict behave = baseDictService.getByItemCode("58");
        aOperate.setBehave(behave);
	    accountService.addAccountOperate(aOperate);
	    return loadingMyAccount();		
	}
	public String payInCash(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		Account a = accountService.getAccountByUser(user);
		ActionContext.getContext().put("myAccount", a);
		return "toPayInCash";
	}
	public String addInMyCart(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		Server server = serverService.findServiceById(serverId);
		Cart cart = new Cart();
		cart.setCart_item(server);
		cart.setCart_user(user);
		accountService.addInMyCart(cart);
		return OpenMyCart();
	}
	public String OpenMyCart(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		List<Server> myCart = accountService.OpenMyCart(user);
		ActionContext.getContext().put("myCart", myCart);
		return "toMyCart";
	}
	public String deleteInCartByServerId(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		accountService.deleteInCartByServerId(user,serverId);
		return OpenMyCart();	
	}
	public String checkAllOperate(){
		User user = (User) ActionContext.getContext().getSession().get("user");
		Account a = accountService.getAccountByUser(user);
		List<AccountOperate> operateList = accountService.checkAllOperate(a);
		ActionContext.getContext().put("AllOperateList", operateList);
		return "OperateList";
		
	}
}
