package com.doers.Service.Impl;

import java.util.List;

import com.doers.Dao.BaseDictDao;
import com.doers.domain.BaseDict;
import com.doers.Service.BaseDictService;

public class BaseDictServiceImpl implements BaseDictService {
	
	private BaseDictDao baseDictDao;
	
	@Override
	public List<BaseDict> getListByTypeCode(String dict_type_code) {
		return baseDictDao.getListByTypeCode(dict_type_code);
	}

	public void setBdd(BaseDictDao baseDictDaobaseDictDao) {
		this.baseDictDao = baseDictDaobaseDictDao;
	}

	
}
