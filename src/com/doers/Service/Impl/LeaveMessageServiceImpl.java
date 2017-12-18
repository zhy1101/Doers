package com.doers.Service.Impl;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.LeaveMessageDao;
import com.doers.Service.LeaveMessageService;
import com.doers.domain.LeaveMessage;
@Transactional
public class LeaveMessageServiceImpl implements LeaveMessageService {
	
	private LeaveMessageDao leaveMessageDao; 
	@Override
	public void makeAMessage(LeaveMessage leaveMessage) {
		leaveMessageDao.save(leaveMessage);
	}
	public void setLeaveMessageDao(LeaveMessageDao leaveMessageDao) {
		this.leaveMessageDao = leaveMessageDao;
	}
	
	
}
