package com.doers.Service;

import com.doers.domain.Server;
import com.doers.domain.Server_production;

public interface ServerService {

	void addNewServer(Server s);

	Server findServiceById(String server_id);

	void addConnectPro(Server_production server_production);

}
