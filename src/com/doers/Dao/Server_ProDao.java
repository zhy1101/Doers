package com.doers.Dao;

import java.util.List;

import com.doers.domain.Production;
import com.doers.domain.Server;
import com.doers.domain.Server_production;

public interface Server_ProDao extends BaseDao<Server_production> {

	List<Server> getConnectedServersByPro(Production p);

}
