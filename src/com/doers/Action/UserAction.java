package com.doers.Action;

import com.doers.domain.User;
import com.doers.Service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Map;

public class UserAction extends ActionSupport implements ModelDriven<User>
{
  private User user = new User();
  UserService userService;

  public void setUserService(UserService userService)
  {
    this.userService = userService;
  }

  public String login() throws Exception {
    User u = this.userService.getUserByCodePassWord(this.user);
    ActionContext.getContext().getSession().put("user", u);
    return "toHome";
  }

  public User getModel() {
    return this.user;
  }
}