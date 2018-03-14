package com.doers.Service.Impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.ServerDao;
import com.doers.Dao.Server_ProDao;
import com.doers.Service.ServerService;
import com.doers.domain.PageBean;
import com.doers.domain.Production;
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
		return (Server)serverDao.getById(server_id);
	}

	@Override
	public void addConnectPro(Server_production server_production) {
		server_ProDao.save(server_production);
	}

	@Override
	public List<Server> getServersByUser(User uid) {
		return serverDao.getServersByUser(uid);
	}

	@Override
	public Server getServerById(String serverId) {
		return serverDao.getById(serverId);
	}

	@Override
	public List<Server> getConnectedServersByPro(Production p) {
		return server_ProDao.getConnectedServersByPro(p);
	}

	@Override
	public PageBean<Server> getAllServersByPage(int currentPage) {
		int currentCount = 12;
		PageBean<Server> pageBean = new PageBean<Server>();
		//1����װ��ǰҳ
		pageBean.setCurrentPage(currentPage);
		//2����װÿҳ��ʾ������
		pageBean.setCurrentCount(currentCount);
		//3����װ������
		int totalCount = 0;
		totalCount = serverDao.getCount();
		pageBean.setTotalCount(totalCount);
		//4����װ��ҳ��
		int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
		pageBean.setTotalPage(totalPage);
		
		//5����ǰҳ��ʾ������
		// select * from product where cid=? limit ?,?
		// ��ǰҳ����ʼ����index�Ĺ�ϵ
		int index = (currentPage-1)*currentCount;
		List<Server> list = null;
		try {
			list = serverDao.findProductByPage(index,currentCount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public void deleteServerById(String serverId) {
		serverDao.delete(serverId);
	}

	
	

}
