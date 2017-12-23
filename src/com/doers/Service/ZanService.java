package com.doers.Service;

import com.doers.domain.Zan;

public interface ZanService {
	
	void addZan(Zan zan);
	
	void removeZan(Zan zan);

	Zan findZanByCondition(Long uid, Long pid) throws Exception;
}
