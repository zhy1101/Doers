package com.doers.Action;

import com.doers.domain.User;
import com.doers.Service.UserService;
import com.doers.utils.CommonsUtils;
import com.doers.utils.MailUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import javax.mail.MessagingException;

public class ResignAction extends ActionSupport
{
  private String activeCode;
  private UserService userService;
  private String checkcode;
  private User u;
  private Map<String, Object> resultMap;
  private String checkCode_session = null;

  public void setResultMap(Map<String, Object> resultMap) { this.resultMap = resultMap; }

  public String getActiveCode() {
    return this.activeCode;
  }
  public void setActiveCode(String activeCode) {
    this.activeCode = activeCode;
  }
  public String getCheckcode() {
    return this.checkcode;
  }
  public void setCheckcode(String checkcode) {
    this.checkcode = checkcode;
  }
  public User getU() {
    return this.u;
  }
  public void setU(User u) {
    this.u = u;
  }
  public String getCheckCode_session() {
    return this.checkCode_session;
  }
  public void setCheckCode_session(String checkCode_session) {
    this.checkCode_session = checkCode_session;
  }

  public void setUserService(UserService userService) {
    this.userService = userService;
  }
  public String resign() {
    this.checkCode_session = ((String)ActionContext.getContext().getSession().get("checkcode"));
    if (!this.checkcode.equals(this.checkCode_session)) {
      System.out.println(this.checkcode);
      System.out.println(this.checkCode_session);
      return "Faild";
    }
    this.u.setStatue(0);
    String activeCode = CommonsUtils.getUUID();
    this.u.setActiveCode(activeCode);
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
    String date = format.format(new Date());
    this.u.setTime(date);
    this.u.setPersonImg_path("/img/user_image.png");

    boolean isRegisterSuccess = false;
    isRegisterSuccess = this.userService.saveUser(this.u);

    if (isRegisterSuccess)
    {
      String emailMsg = "恭喜您注册成功，请点击下面的连接进行激活账户<a href='http://localhost:8080/Doers/resignAction_active?activeCode=" + 
        activeCode + "'>" + 
        "http://localhost:8080/Doers/resignAction_active?activeCode=" + activeCode + "</a>";
      try {
        MailUtils.sendMail(this.u.getEmail(), emailMsg);
      } catch (MessagingException e) {
        e.printStackTrace();
      }
    }

    return "step2";
  }

  public String active() {
    this.userService.active(this.activeCode);
    return "step3";
  }
}
