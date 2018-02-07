package com.doers.Service;

import java.util.List;

import com.doers.domain.Production;
import com.doers.domain.Push;
import com.doers.domain.User;
import com.doers.domain.Zan;

public interface ZanService {
	
	void addZan(Zan zan);
	
	void removeZan(Zan zan);

	Zan findZanByCondition(Long uid, Long pid) throws Exception;

	List<Production> getMyZanPro(User u);

}
