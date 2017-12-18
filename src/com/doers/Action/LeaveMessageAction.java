package com.doers.Action;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.doers.Service.LeaveMessageService;
import com.doers.domain.LeaveMessage;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;


public class LeaveMessageAction extends ActionSupport implements ModelDriven<LeaveMessage>{
	
	LeaveMessage leaveMessage =new LeaveMessage();
	private LeaveMessageService leaveMessageService;
	
	public String makeAMessage(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String date = format.format(new Date());
		leaveMessage.setTime(date);
		leaveMessageService.makeAMessage(leaveMessage);
		return "passSuccess";
	}
	
	@Override
	public LeaveMessage getModel() {
		return leaveMessage;
	}

	public void setLeaveMessageService(LeaveMessageService leaveMessageService) {
		this.leaveMessageService = leaveMessageService;
	}
	
	

}
