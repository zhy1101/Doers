package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Service.PushService;
import com.doers.domain.Production;
import com.doers.domain.Push;
import com.doers.domain.User;
@Transactional
public class PushServiceImpl implements PushService {
	private PushDao pushDao;
	
	public void setPushDao(PushDao pushDao) {
		this.pushDao = pushDao;
	}

	@Override
	public void addPush(Push push) {
		pushDao.save(push);
	}

	@Override
	public Push findPushByCondition(Long uid, Long aid) {
		return pushDao.findPushByCondition(uid, aid);
	}

	@Override
	public void removePush(Push push) {
		pushDao.delete(push);
	}
	public List<Production> getMyZanPro(User u) {
		return pushDao.getMyPushArt(u);
	}

}
