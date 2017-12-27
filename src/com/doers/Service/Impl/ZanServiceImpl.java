package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ZanDao;
import com.doers.Service.ZanService;
import com.doers.domain.Production;
import com.doers.domain.User;
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
	public Zan findZanByCondition(Long uid, Long pid) throws Exception {
		return zanDao.findZanByCondition(uid, pid);
	}

	@Override
	public List<Production> getMyZanPro(User u) {
		return zanDao.getMyZanPro(u);
	}

}
