package com.doers.Dao;

import com.doers.domain.User;

public  interface UserDao extends BaseDao<User>
{
  public  boolean saveUser(User paramuser);

  public  void active(String paramString);

  public Long findUsername(String paramString);

  public  User getUserByUserName(String paramString);
}