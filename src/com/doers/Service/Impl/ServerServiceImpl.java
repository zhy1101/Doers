package com.doers.Service.Impl;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ServerDao;
import com.doers.Service.ServerService;
import com.doers.domain.Server;

@Transactional
public class ServerServiceImpl implements ServerService{
	private ServerDao serverDao;
	

	public void setServerDao(ServerDao serverDao) {
		this.serverDao = serverDao;
	}


	@Override
	public void addNewServer(Server s) {
		serverDao.save(s);
		
	}
	
	

}
