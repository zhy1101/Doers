package com.doers.Service.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.doers.Dao.LeaveMessageDao;
import com.doers.Service.LeaveMessageService;
import com.doers.domain.LeaveMessage;
import com.doers.domain.User;
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
	@Override
	public List<LeaveMessage> getMsgByUser(User u) {
		return leaveMessageDao.getMsgByUser(u);
	}
	
	
}
