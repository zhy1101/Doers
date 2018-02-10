package com.doers.Service;

import java.util.List;

import com.doers.domain.Article;
import com.doers.domain.Production;
import com.doers.domain.Push;
import com.doers.domain.User;

public interface PushService {

	void addPush(Push push);

	Push findPushByCondition(Long uid, Long aid) throws Exception;

	void removePush(Push push);
	
	List<Article> getMyPushPro(User u);
}
