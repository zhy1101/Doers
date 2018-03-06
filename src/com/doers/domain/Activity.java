package com.doers.domain;

import java.util.Set;

public class Activity {
	private Long activityId;
	private String activityTitle;
	private BaseDict activityType;
	private String startTime;
	private String endTime;
	private String holdGroup;
	private String activityContent;
	private String linkURL;
	private String activityCoverURL;
	private Set<Activity_User> activity_User_con;
	
	public Set<Activity_User> getActivity_User_con() {
		return activity_User_con;
	}
	public void setActivity_User_con(Set<Activity_User> activity_User_con) {
		this.activity_User_con = activity_User_con;
	}
	public Long getActivityId() {
		return activityId;
	}
	public void setActivityId(Long activityId) {
		this.activityId = activityId;
	}
	public String getActivityTitle() {
		return activityTitle;
	}
	public void setActivityTitle(String activityTitle) {
		this.activityTitle = activityTitle;
	}
	public BaseDict getActivityType() {
		return activityType;
	}
	public void setActivityType(BaseDict activityType) {
		this.activityType = activityType;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getHoldGroup() {
		return holdGroup;
	}
	public void setHoldGroup(String holdGroup) {
		this.holdGroup = holdGroup;
	}
	public String getActivityContent() {
		return activityContent;
	}
	public void setActivityContent(String activityContent) {
		this.activityContent = activityContent;
	}
	public String getLinkURL() {
		return linkURL;
	}
	public void setLinkURL(String linkURL) {
		this.linkURL = linkURL;
	}
	public String getActivityCoverURL() {
		return activityCoverURL;
	}
	public void setActivityCoverURL(String activityCoverURL) {
		this.activityCoverURL = activityCoverURL;
	}

}
