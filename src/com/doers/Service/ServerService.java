package com.doers.Service;

import java.util.List;

import com.doers.domain.Server;
import com.doers.domain.Server_production;
import com.doers.domain.User;

public interface ServerService {

	void addNewServer(Server s);

	Server findServiceById(String server_id);

	void addConnectPro(Server_production server_production);

	List<Server> getServersByUser(User user);

}
