package com.doers.domain;

import java.util.Set;

public class Server {
	private String serverId;
	private String serverName;
	private String serverDescribtion;
	private Integer talkTime;
	private String serverCover;
	private Double lowLine;
	private User user;
	private Set<Server_production> connectedProductions;
	
	
	public String getServerId() {
		return serverId;
	}
	public void setServerId(String serverId) {
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
	public Set<Server_production> getConnectedProductions() {
		return connectedProductions;
	}
	public void setConnectedProductions(Set<Server_production> connectedProductions) {
		this.connectedProductions = connectedProductions;
	}
	
}
