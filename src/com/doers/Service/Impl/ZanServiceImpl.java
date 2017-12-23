package com.doers.Service.Impl;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ZanDao;
import com.doers.Service.ZanService;
import com.doers.domain.Zan;
import com.sun.org.apache.bcel.internal.generic.NEW;
@Transactional
public class ZanServiceImpl implements ZanService {
	private ZanDao zanDao;
	public void setZanDao(ZanDao zanDao) {
		this.zanDao = zanDao;
	}

	@Override
	public void addZan(Zan zan) {
		zanDao.save(zan);
	}

	@Override
	public void removeZan(Zan zan) {
		zanDao.delete(zan);
	}

	@Override
	public Zan findZanByCondition(long uid, long pid) {
		return zanDao.findZanByCondition(uid, pid);
	}

}
