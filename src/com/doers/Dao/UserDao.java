package com.doers.Dao;

import java.util.List;

import com.doers.domain.User;

public  interface UserDao extends BaseDao<User>
{
  public  boolean saveUser(User paramuser);

  public  void active(String paramString);

  public boolean findUsername(String paramString);

  public boolean checkEmail(String e_mail);

  public User getUserByUserName(String user_name);

public void updateByCondition(String caddress, String cbirthday, String cweiChat, String cQQ, String cskill,
		String cdescription, Long uid);

public void updatePersonImg(String urlString, Long uid);

public List<User> getRelativeUsersByWord(String word);
}