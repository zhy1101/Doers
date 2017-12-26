package com.doers.Dao;

import java.util.List;

import com.doers.domain.LeaveMessage;
import com.doers.domain.User;

public interface LeaveMessageDao extends BaseDao<LeaveMessage>{

	List<LeaveMessage> getMsgByUser(User u);

}
