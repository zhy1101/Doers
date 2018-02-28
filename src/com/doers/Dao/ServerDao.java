package com.doers.Dao;

import java.util.List;

import com.doers.domain.Server;
import com.doers.domain.User;
import com.doers.domain.Zan;

public interface ServerDao extends BaseDao<Server>{

	List<Server> getServersByUser(User uid);

}
