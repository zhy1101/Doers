package com.doers.Action;

import java.util.List;

import com.doers.Service.ActivityService;
import com.doers.domain.Activity;
import com.doers.domain.Activity_User;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ActivityAction extends ActionSupport {
	
	private ActivityService activityService ;
	private String activityId;

	public void setActivityService(ActivityService activityService) {
		this.activityService = activityService;
	}
	public String getActivityId() {
		return activityId;
	}

	public void setActivityId(String activityId) {
		this.activityId = activityId;
	}

	public String loadingActivityCenter(){
		List<Activity> activityList = activityService.loadingActivityCenter();
		ActionContext.getContext().put("activityList",  activityList);
		return "gotoActivityCenter";
	}
	public String gotoActivityPassPage(){
		Activity activity = activityService.getActivityById(activityId);
		ActionContext.getContext().put("activity", activity);
		return "gotoActivityPassStation";
		
	}
	public String takePartInActivity(){
		Activity_User au = new Activity_User();
		Activity activity = activityService.getActivityById(activityId);
		User u = (User) ActionContext.getContext().getSession().get("user");
		au.setActivity(activity);
		au.setUser(u);
		activityService.userTakeActivity(au);
		return NONE;
	}
		
	
}
