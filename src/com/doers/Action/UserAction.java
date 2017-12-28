package com.doers.Action;

import com.doers.domain.User;
import com.doers.domain.LeaveMessage;
import com.doers.domain.Production;
import com.doers.Service.LeaveMessageService;
import com.doers.Service.ProductionService;
import com.doers.Service.UserService;
import com.doers.Service.ZanService;
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
  private LeaveMessageService leaveMessageService;
  private ZanService zanService;
  
  
public void setZanService(ZanService zanService) {
	this.zanService = zanService;
}
public void setLeaveMessageService(LeaveMessageService leaveMessageService) {
	this.leaveMessageService = leaveMessageService;
}
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
	  List<Production> myProductionList= productionService.getUserProductionList(u);
	  ActionContext.getContext().put("myProductionList", myProductionList);
	  return "toUserProductionList";
  }
  public String dropout(){
	  ActionContext.getContext().getSession().put("user", null);
	  ActionContext.getContext().getSession().put("production", null);
	  return "toHome";
  } 
  public String loadToMeMsg(){
	  User u=(User) ActionContext.getContext().getSession().get("user");
	  List<LeaveMessage> myLeaveMsg = leaveMessageService.getMsgByUser(u);
	  ActionContext.getContext().put("myLeaveMsg", myLeaveMsg);
	  return "toUserMsgList";  
  }
  public String loadMyFavor(){
	  User u=(User) ActionContext.getContext().getSession().get("user");
	  List<Production> myFavorProductions = zanService.getMyZanPro(u);
	  ActionContext.getContext().put("myFavorProductionList", myFavorProductions);
	  return "toMyFavorList";
  }
  public User getModel() {
    return this.user;
  }


}