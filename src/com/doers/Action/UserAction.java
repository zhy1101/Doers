package com.doers.Action;

import com.doers.domain.User;
import com.doers.domain.Production;
import com.doers.Service.ProductionService;
import com.doers.Service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.util.List;
import java.util.Map;

public class UserAction extends ActionSupport implements ModelDriven<User>
{
  private User user = new User();
  private String Caddress;
  private String Cbirthday;
  private String CweiChat;
  private String CQQ;
  private String Cskill;
  private String Cdescription;
  
  UserService userService;
  private ProductionService productionService;
  

public String getCaddress() {
	return Caddress;
}
public void setCaddress(String caddress) {
	Caddress = caddress;
}
public String getCbirthday() {
	return Cbirthday;
}
public void setCbirthday(String cbirthday) {
	Cbirthday = cbirthday;
}
public String getCweiChat() {
	return CweiChat;
}
public void setCweiChat(String cweiChat) {
	CweiChat = cweiChat;
}
public String getCQQ() {
	return CQQ;
}
public void setCQQ(String cQQ) {
	CQQ = cQQ;
}
public String getCskill() {
	return Cskill;
}
public void setCskill(String cskill) {
	Cskill = cskill;
}
public String getCdescription() {
	return Cdescription;
}
public void setCdescription(String cdescription) {
	Cdescription = cdescription;
}
public ProductionService getProductionService() {
	return productionService;
}
public void setProductionService(ProductionService productionService) {
	this.productionService = productionService;
}
public void setUserService(UserService userService)
  {
    this.userService = userService;
  }
  public String login() throws Exception {
    User u = this.userService.getUserByCodePassWord(this.user);
    ActionContext.getContext().getSession().put("user", u);
    return "toHome";
  }
  public String loadUserWorkspace(){
	  User u = (User) ActionContext.getContext().getSession().get("user");
	  //List<Production> myproductionList = productionService. getUserProductionList(u);
	  //ActionContext.getContext().put("myproductionList", myproductionList);
	  
	  return "toUserWorkspace";
  }
  public String save(){
	  User u = (User) ActionContext.getContext().getSession().get("user");
	  u.setAddress(Caddress);
	  u.setBirthday(Cbirthday);
	  u.setDescription(Cdescription);
	  u.setQQ(CQQ);
	  u.setSkill(Cskill);
	  u.setWeiChat(CweiChat);
	  userService.update(u);
	  ActionContext.getContext().getSession().put("user",u);
	  return "toUserWorkspace";
  }
  public String loadMyProduction(){
	  User u=(User) ActionContext.getContext().getSession().get("user");
	   ActionContext.getContext().put("ProductionList", u.getProductions());
	   return "toUserProductionList";
  }
  public User getModel() {
    return this.user;
  }
}