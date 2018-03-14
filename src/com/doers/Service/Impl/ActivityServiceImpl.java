package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ActivityDao;
import com.doers.Dao.Activity_UserDao;
import com.doers.Service.ActivityService;
import com.doers.domain.Activity;
import com.doers.domain.Activity_User;
import com.doers.domain.User;
import com.sun.org.apache.bcel.internal.generic.NEW;
@Transactional
public class ActivityServiceImpl implements ActivityService{

	private ActivityDao activityDao;
	private Activity_UserDao activity_userDao;
	
	
	public void setActivity_userDao(Activity_UserDao activity_userDao) {
		this.activity_userDao = activity_userDao;
	}

	public void setActivityDao(ActivityDao activityDao) {
		this.activityDao = activityDao;
	}

	@Override
	public List<Activity> loadingActivityCenter() {
		return activityDao.loadingActivityCenter();
	}
	public List<Activity> loadingCompetActivity() {
		return activityDao.loadingCompetActivity();
	}
	public List<Activity> loadingClassActivity() {
		return activityDao.loadingClassActivity();
	}

	@Override
	public Activity getActivityById(String activityId) {
		return activityDao.getById(Long.valueOf(activityId));
	}

	@Override
	public void userTakeActivity(Activity_User au) {
		activity_userDao.save(au);	
	}

	@Override
	public List<Activity_User> getActivityByUser(User user) {
		return activity_userDao.getActivityByUser(user);
	}
	@Override
	public List<Activity> getActivityByUser_direct(User user) {
		return activityDao.getActivityByUser(user);
	}

}
