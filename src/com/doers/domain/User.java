package com.doers.domain;

import java.util.HashSet;
import java.util.Set;

public class User
{
  private Long uid;
  private String password;
  private String user_name;
  private String email;
  private String real_id;
  private String activeCode;
  private String time;
  private int statue;
  private String personImg_path;
  private String birthday;
  private String address;
  private String weiChat;
  private String QQ;
  private String description;
  private String skill;
  private BaseDict kind;
  private Set<Production> productions;
  private Set<LeaveMessage> myLeaveMessage;
  private Set<LeaveMessage> toMeLeaveMessage;
  private Set<Zan> myZan;
  private Set<Server> servers;
  private Set<Article> myArticles;
  private Set<Activity_User> activity_user_con;
  
  
	  public Set<Activity_User> getActivity_user_con() {
	return activity_user_con;
}
public void setActivity_user_con(Set<Activity_User> activity_user_con) {
	this.activity_user_con = activity_user_con;
}
	public Set<Article> getMyArticles() {
	return myArticles;
}
public void setMyArticles(Set<Article> myArticles) {
	this.myArticles = myArticles;
}
	public Set<Server> getServers() {
	return servers;
}
public void setServers(Set<Server> servers) {
	this.servers = servers;
}
	public Set<Zan> getMyZan() {
		return myZan;
	}
	public void setMyZan(Set<Zan> myZan) {
		this.myZan = myZan;
	}
	public String getSkill() { return this.skill; }

	  public void setSkill(String skill) {
	    this.skill = skill;
	  }
  public String getDescription() {
    return this.description;
  }
  public void setDescription(String description) {
    this.description = description;
  }
  public String getBirthday() {
    return this.birthday;
  }
  public void setBirthday(String birthday) {
    this.birthday = birthday;
  }
  public String getAddress() {
    return this.address;
  }
  public void setAddress(String address) {
    this.address = address;
  }
  public String getWeiChat() {
    return this.weiChat;
  }
  public void setWeiChat(String weiChat) {
    this.weiChat = weiChat;
  }
  public String getQQ() {
    return this.QQ;
  }
  public void setQQ(String qQ) {
    this.QQ = qQ;
  }
  public String getPersonImg_path() {
    return this.personImg_path;
  }
  public void setPersonImg_path(String personImg_path) {
    this.personImg_path = personImg_path;
  }
  public Long getUid() {
    return this.uid;
  }
  public void setUid(Long uid) {
    this.uid = uid;
  }
  public String getPassword() {
    return this.password;
  }
  public void setPassword(String password) {
    this.password = password;
  }
  public String getUser_name() {
    return this.user_name;
  }
  public void setUser_name(String user_name) {
    this.user_name = user_name;
  }
  public String getEmail() {
    return this.email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public BaseDict getKind() {
    return this.kind;
  }
  public void setKind(BaseDict kind) {
    this.kind = kind;
  }
  public String getReal_id() {
    return this.real_id;
  }
  public void setReal_id(String real_id) {
    this.real_id = real_id;
  }
  public String getActiveCode() {
    return this.activeCode;
  }
  public void setActiveCode(String activeCode) {
    this.activeCode = activeCode;
  }
  public String getTime() {
    return this.time;
  }
  public void setTime(String time) {
    this.time = time;
  }
  public int getStatue() {
    return this.statue;
  }
  public void setStatue(int statue) {
    this.statue = statue;
  }
  public Set<Production> getProductions() {
    return this.productions;
  }
  public void setProductions(Set<Production> productions) {
    this.productions = productions;
  }

	public Set<LeaveMessage> getMyLeaveMessage() {
		return myLeaveMessage;
	}
	
	public void setMyLeaveMessage(Set<LeaveMessage> myLeaveMessage) {
		this.myLeaveMessage = myLeaveMessage;
	}
	
	public Set<LeaveMessage> getToMeLeaveMessage() {
		return toMeLeaveMessage;
	}
	
	public void setToMeLeaveMessage(Set<LeaveMessage> toMeLeaveMessage) {
		this.toMeLeaveMessage = toMeLeaveMessage;
	}
  
}
