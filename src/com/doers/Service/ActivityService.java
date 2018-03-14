package com.doers.Service;

import java.util.List;

import com.doers.domain.Activity;
import com.doers.domain.Activity_User;
import com.doers.domain.User;

public interface ActivityService {

	List<Activity> loadingActivityCenter();

	Activity getActivityById(String activityId);

	void userTakeActivity(Activity_User au);

	List<Activity> loadingCompetActivity();

	List<Activity> loadingClassActivity();

	List<Activity_User> getActivityByUser(User user);
	
	List<Activity> getActivityByUser_direct(User user);

}
