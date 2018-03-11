package com.doers.Action;

import com.doers.domain.User;
import com.doers.domain.Article;
import com.doers.domain.LeaveMessage;
import com.doers.domain.Production;
import com.doers.Service.ArticleService;
import com.doers.Service.LeaveMessageService;
import com.doers.Service.ProductionService;
import com.doers.Service.PushService;
import com.doers.Service.UserService;
import com.doers.Service.ZanService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class UserAction extends ActionSupport implements ModelDriven<User>
{
  private User user = new User();
  private String Caddress;
  private String Cbirthday;
  private String CweiChat;
  private String CQQ;
  private String Cskill;
  private String Cdescription;
  private File avatar_file;
  private String avatar_fileFileName;
  private Long userId;
  
  UserService userService;
  private ProductionService productionService;
  private LeaveMessageService leaveMessageService;
  private ZanService zanService;
  private ArticleService articleService;
  private PushService pushService;
public Long getUserId() {
	return userId;
}
public void setUserId(Long userId) {
	this.userId = userId;
}
public void setPushService(PushService pushService) {
	this.pushService = pushService;
}
public void setArticleService(ArticleService articleService) {
	this.articleService = articleService;
}
public void setZanService(ZanService zanService) {
	this.zanService = zanService;
}
public void setLeaveMessageService(LeaveMessageService leaveMessageService) {
	this.leaveMessageService = leaveMessageService;
}
public String getAvatar_fileFileName() {
	return avatar_fileFileName;
}
public void setAvatar_fileFileName(String avatar_fileFileName) {
	this.avatar_fileFileName = avatar_fileFileName;
}
public String getCaddress() {
	return Caddress;
}
public void setCaddress(String caddress) {
	Caddress = caddress;
}
public File getAvatar_file() {
	return avatar_file;
}
public void setAvatar_file(File avatar_file) {
	this.avatar_file = avatar_file;
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
	  userService.updateByCondition(Caddress,Cbirthday,CweiChat,CQQ,Cskill,Cdescription,u.getUid());
	  u=userService.getUserById(String.valueOf(u.getUid()));
	  ActionContext.getContext().getSession().put("user",u);
	  return "toUserInfo";
  }
  public String changePersonalPic(){
	  User u = (User) ActionContext.getContext().getSession().get("user");
	  String uuid=UUID.randomUUID().toString();
	  this.avatar_file.renameTo(new File("D:/DoersWorks/PersonImg/" + uuid+ "_" + this.avatar_fileFileName));
	  String urlString = "/personImg/" + uuid + "_" + this.avatar_fileFileName;
	  userService.updatePersonImg(urlString,u.getUid());
	  u.setPersonImg_path(urlString);
	  u=userService.getUserById(String.valueOf(u.getUid()));
	  return "toUserInfo";	  
  }
  public String loadMyProduction(){
	  User u=(User) ActionContext.getContext().getSession().get("user");
	  List<Production> myProductionList= productionService.getUserProductionList(u);
	  ActionContext.getContext().put("myProductionList", myProductionList);
	  List<Article> myArticleList = articleService.getUserArticleList(u);
	  ActionContext.getContext().put("myArticleList", myArticleList);
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
	  List<Article> myFavorArticles = pushService.getMyPushPro(u);
	  ActionContext.getContext().put("myFavorProductionList", myFavorProductions);
	  ActionContext.getContext().put("myFavorArticleList", myFavorArticles);
	  return "toMyFavorList";
  }
  public String openDoerSpace(){
	  User user = userService.getUserById(userId.toString());
	  ActionContext.getContext().put("doer", user);
	  return "gotoDoerSpace";
  }
  public User getModel() {
    return this.user;
  }

}