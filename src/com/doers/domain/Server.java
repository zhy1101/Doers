package com.doers.domain;

import java.util.Set;

public class Server {
	private Long serverId;
	private String serverName;
	private String serverDescribtion;
	private Integer talkTime;
	private String serverCover;
	private Double lowLine;
	private User user;
	private Set<Production> connectedProductions;
	
	
	public Set<Production> getConnectedProductions() {
		return connectedProductions;
	}
	public void setConnectedProductions(Set<Production> connectedProductions) {
		this.connectedProductions = connectedProductions;
	}
	
	public Long getServerId() {
		return serverId;
	}
	public void setServerId(Long serverId) {
		this.serverId = serverId;
	}
	public String getServerName() {
		return serverName;
	}
	public void setServerName(String serverName) {
		this.serverName = serverName;
	}
	public String getServerDescribtion() {
		return serverDescribtion;
	}
	public void setServerDescribtion(String serverDescribtion) {
		this.serverDescribtion = serverDescribtion;
	}
	public Integer getTalkTime() {
		return talkTime;
	}
	public void setTalkTime(Integer talkTime) {
		this.talkTime = talkTime;
	}
	public String getServerCover() {
		return serverCover;
	}
	public void setServerCover(String serverCover) {
		this.serverCover = serverCover;
	}
	public Double getLowLine() {
		return lowLine;
	}
	public void setLowLine(Double lowLine) {
		this.lowLine = lowLine;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
