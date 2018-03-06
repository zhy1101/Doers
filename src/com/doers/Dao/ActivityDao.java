package com.doers.Dao;

import java.util.List;

import com.doers.domain.Activity;

public interface ActivityDao extends BaseDao<Activity> {

	List<Activity> loadingActivityCenter();

}
