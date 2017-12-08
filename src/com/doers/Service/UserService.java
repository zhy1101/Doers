package com.doers.Service;

import com.doers.domain.User;

public abstract interface UserService
{
  public abstract boolean saveUser(User paramuser);

  public abstract void active(String paramString);

  public abstract User getUserByCodePassWord(User paramuser);

  public abstract boolean checkUsername(String paramString);

  public abstract User getUserById(String paramString);
}