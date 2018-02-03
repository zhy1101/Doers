package com.doers.domain;

public class Push {
	private String push_id;
	
	private Article push_article;
	private User push_user;
	public String getPush_id() {
		return push_id;
	}
	public void setPush_id(String push_id) {
		this.push_id = push_id;
	}
	public Article getPush_article() {
		return push_article;
	}
	public void setPush_article(Article push_article) {
		this.push_article = push_article;
	}
	public User getPush_user() {
		return push_user;
	}
	public void setPush_user(User push_user) {
		this.push_user = push_user;
	}
	
}
