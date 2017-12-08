package com.doers.Dao;

import com.doers.domain.User;

public abstract interface UserDao extends BaseDao<User>
{
  public abstract boolean saveUser(User paramuser);

  public abstract void active(String paramString);

  public abstract Long findUsername(String paramString);

  public abstract User getUserByUserName(String paramString);
}