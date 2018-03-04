package com.doers.Dao.Impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import com.doers.Dao.Server_ProDao;
import com.doers.domain.Production;
import com.doers.domain.Server;
import com.doers.domain.Server_production;

public class Server_ProDaoImpl extends BaseDaoImpl<Server_production> implements Server_ProDao {

	@Override
	public List<Server> getConnectedServersByPro(Production p) {
		String hqlString = "from Server_production where production.productionId=?";
		return (List<Server>) getHibernateTemplate().find(hqlString, p.getProductionId());	
	}

}
