package com.doers.Service;

import java.util.List;

import com.doers.domain.LeaveMessage;
import com.doers.domain.User;

public interface LeaveMessageService {

	void makeAMessage(LeaveMessage leaveMessage);

	List<LeaveMessage> getMsgByUser(User u);

}
