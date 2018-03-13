package com.doers.Service.Impl;

import com.doers.Dao.AccountDao;
import com.doers.Dao.UserDao;
import com.doers.domain.Account;
import com.doers.domain.User;
import com.doers.Service.UserService;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

@Transactional
public class UserServiceImpl implements UserService
{
  private UserDao userDao;
  private AccountDao accountDao;

  public void setUserDao(UserDao ud)
  {
    this.userDao = ud;
  }
  
  public void setAccountDao(AccountDao accountDao) {
	this.accountDao = accountDao;
}

public boolean saveUser(User u)
  {
    Account a = new Account();
    a.setAccount_user_id(u.getUid());
    a.setWallet1(0);
    a.setWallet2(0);
    accountDao.save(a);
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
    return this.userDao.findUsername(username);
  }

  public User getUserById(String id)
  {
    return (User)this.userDao.getById(Long.valueOf(id));
  }

	@Override
	public boolean checkEmail(String e_mail) {
		return this.userDao.checkEmail(e_mail);
	}

	@Override
	public void save(User u) {
		userDao.save(u);
	}

	@Override
	public void update(User u) {
		userDao.update(u);
		
	}

	@Override
	public void updateByCondition(String caddress, String cbirthday, String cweiChat, String cQQ, String cskill,
			String cdescription, Long uid) {
			userDao.updateByCondition(caddress, cbirthday,cweiChat, cQQ, cskill,cdescription, uid);
	}

	@Override
	public void updatePersonImg(String urlString, Long uid) {
		userDao.updatePersonImg(urlString,uid) ;
	}

	@Override
	public List<User> getRelativeUsersByWord(String word) {
		return userDao.getRelativeUsersByWord(word);
	}

	@Override
	public List<User> getFourtopUserList() {
		return userDao.getFourtopUserList();
	}
}
