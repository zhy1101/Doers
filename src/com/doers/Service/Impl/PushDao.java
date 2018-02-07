package com.doers.Service.Impl;

import java.util.List;

import com.doers.Dao.BaseDao;
import com.doers.domain.Production;
import com.doers.domain.Push;
import com.doers.domain.User;

public interface PushDao extends BaseDao<Push> {

	Push findPushByCondition(Long uid, Long aid);

	List<Production> getMyPushArt(User u);

}
