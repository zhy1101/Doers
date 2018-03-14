package com.doers.Dao;

import java.util.List;

import com.doers.domain.Activity_User;
import com.doers.domain.User;

public interface Activity_UserDao extends BaseDao<Activity_User> {

	List<Activity_User> getActivityByUser(User user);

}
