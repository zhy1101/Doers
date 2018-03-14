package com.doers.Dao;

import java.util.List;

import com.doers.domain.Activity;
import com.doers.domain.User;

public interface ActivityDao extends BaseDao<Activity> {

	List<Activity> loadingActivityCenter();

	List<Activity> loadingCompetActivity();

	List<Activity> loadingClassActivity();

	List<Activity> getActivityByUser(User user);

}
