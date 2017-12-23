package com.doers.Dao;

import com.doers.domain.Zan;

public interface ZanDao extends BaseDao<Zan> {

	Zan findZanByCondition(Long uid, Long pid) throws Exception;


}
