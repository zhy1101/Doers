package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ActivityDao;
import com.doers.Dao.Activity_UserDao;
import com.doers.Service.ActivityService;
import com.doers.domain.Activity;
import com.doers.domain.Activity_User;
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

	@Override
	public Activity getActivityById(String activityId) {
		return activityDao.getById(activityId);
	}

	@Override
	public void userTakeActivity(Activity_User au) {
		activity_userDao.save(au);	
	}

}
