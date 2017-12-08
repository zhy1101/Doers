package com.doers.Service;

import com.doers.domain.User;

public  interface UserService
{
  public  boolean saveUser(User paramuser);

  public  void active(String paramString);

  public  User getUserByCodePassWord(User paramuser);

  public  boolean checkUsername(String paramString);

  public  User getUserById(String paramString);
}