package com.doers.domain;

import java.util.Set;

public class Article {
	private Long articleId;
	private String articleTitle;
	private String content;
	private String time;
	private String coverURL;
	private Set<Push> pushlist;
	private int push;
	private User user;
	private String word1;
	private String word2;
	private String word3;
	public Long getArticleId() {
		return articleId;
	}
	public void setArticleId(Long articleId) {
		this.articleId = articleId;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getCoverURL() {
		return coverURL;
	}
	public void setCoverURL(String coverURL) {
		this.coverURL = coverURL;
	}
	public Set<Push> getPushlist() {
		return pushlist;
	}
	public void setPushlist(Set<Push> pushlist) {
		this.pushlist = pushlist;
	}
	public int getPush() {
		return this.push;
	}
	public void setPush(int zan) {
		this.push = this.pushlist.size();
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getWord1() {
		return word1;
	}
	public void setWord1(String word1) {
		this.word1 = word1;
	}
	public String getWord2() {
		return word2;
	}
	public void setWord2(String word2) {
		this.word2 = word2;
	}
	public String getWord3() {
		return word3;
	}
	public void setWord3(String word3) {
		this.word3 = word3;
	}
	
	
	
	
}
