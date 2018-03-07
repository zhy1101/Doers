package com.doers.Service;

import java.util.List;

import com.doers.domain.Activity;
import com.doers.domain.Activity_User;

public interface ActivityService {

	List<Activity> loadingActivityCenter();

	Activity getActivityById(String activityId);

	void userTakeActivity(Activity_User au);

	List<Activity> loadingCompetActivity();

	List<Activity> loadingClassActivity();

}
