package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ServerDao;
import com.doers.Dao.Server_ProDao;
import com.doers.Service.ServerService;
import com.doers.domain.Server;
import com.doers.domain.Server_production;
import com.doers.domain.User;

@Transactional
public class ServerServiceImpl implements ServerService{
	private ServerDao serverDao;
	private Server_ProDao server_ProDao; 

	public void setServerDao(ServerDao serverDao) {
		this.serverDao = serverDao;
	}

	public void setServer_ProDao(Server_ProDao server_ProDao) {
		this.server_ProDao = server_ProDao;
	}

	@Override
	public void addNewServer(Server s) {
		serverDao.save(s);
		
	}

	@Override
	public Server findServiceById(String server_id) {
		return serverDao.getById(server_id);
	}

	@Override
	public void addConnectPro(Server_production server_production) {
		server_ProDao.save(server_production);
	}

	@Override
	public List<Server> getServersByUser(User uid) {
		return serverDao.getServersByUser(uid);
	}

	
	

}
