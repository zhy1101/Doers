package com.doers.Dao;

import com.doers.domain.User;

public  interface UserDao extends BaseDao<User>
{
  public  boolean saveUser(User paramuser);

  public  void active(String paramString);

  public boolean findUsername(String paramString);

  public boolean checkEmail(String e_mail);

  public User getUserByUserName(String user_name);
}