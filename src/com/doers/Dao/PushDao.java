package com.doers.Dao;

import java.util.List;

import com.doers.domain.Article;
import com.doers.domain.Production;
import com.doers.domain.Push;
import com.doers.domain.User;

public interface PushDao extends BaseDao<Push> {

	Push findPushByCondition(Long uid, Long aid) throws Exception;

	List<Article> getMyPushArt(User u);

}
