package com.doers.Dao;

import java.util.List;

import com.doers.domain.Production;
import com.doers.domain.User;
import com.doers.domain.Zan;

public interface ZanDao extends BaseDao<Zan> {

	Zan findZanByCondition(Long uid, Long pid) throws Exception;

	List<Production> getMyZanPro(User u);


}
