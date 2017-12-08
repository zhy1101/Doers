package com.doers.Service.Impl;

import com.doers.Dao.UserDao;
import com.doers.domain.User;
import com.doers.Service.UserService;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public class UserServiceImpl implements UserService
{
  private UserDao userDao;

  public void setUserDao(UserDao ud)
  {
    this.userDao = ud;
  }

  public boolean saveUser(User u)
  {
    return this.userDao.saveUser(u);
  }

  public void active(String activeCode)
  {
    this.userDao.active(activeCode);
  }

  public User getUserByCodePassWord(User u)
  {
    User existU = this.userDao.getUserByUserName(u.getUser_name());
    if (existU == null) {
      throw new RuntimeException("用户名不存在!");
    }
    if (!existU.getPassword().equals(u.getPassword())) {
      throw new RuntimeException("密码错误!");
    }
    return existU;
  }

  public boolean checkUsername(String username) {
    Long isExist = Long.valueOf(0L);
    isExist = this.userDao.findUsername(username);

    return isExist.longValue() > 0L;
  }

  public User getUserById(String id)
  {
    return (User)this.userDao.getById(Long.valueOf(id));
  }
}
