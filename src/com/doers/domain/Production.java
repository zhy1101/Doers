package com.doers.domain;

import java.util.Set;

public class Production
{
  private long productionId;
  private String productionTitle;
  private String content;
  private String time;
  private String coverURL;
  private int zan;
  private String shortcontent;
  private User user;
  private BaseDict big_kind;
  private BaseDict small_kind;
  private Set<Zan> zanlist;
  
  
	public Set<Zan> getZanlist() {
		return zanlist;
	}
	public void setZanlist(Set<Zan> zanlist) {
		this.zanlist = zanlist;
	}
	public String getShortcontent()
  {
    return this.shortcontent;
  }
  public void setShortcontent(String shortcontent) {
    this.shortcontent = shortcontent;
  }
  public int getZan() {
    return this.zan;
  }
  public void setZan(int zan) {
    this.zan = zan;
  }
  public String getCoverURL() {
    return this.coverURL;
  }
  public void setCoverURL(String coverURL) {
    this.coverURL = coverURL;
  }
  public long getProductionId() {
    return this.productionId;
  }
  public void setProductionId(long showId) {
    this.productionId = showId;
  }

  public String getProductionTitle() {
    return this.productionTitle;
  }
  public void setProductionTitle(String productionTitle) {
    this.productionTitle = productionTitle;
  }
  public String getContent() {
    return this.content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public BaseDict getBig_kind() {
    return this.big_kind;
  }
  public void setBig_kind(BaseDict big_kind) {
    this.big_kind = big_kind;
  }
  public BaseDict getSmall_kind() {
    return this.small_kind;
  }
  public void setSmall_kind(BaseDict small_kind) {
    this.small_kind = small_kind;
  }
  public String getTime() {
    return this.time;
  }
  public void setTime(String time) {
    this.time = time;
  }
  public User getUser() {
    return this.user;
  }
  public void setUser(User user) {
    this.user = user;
  }
}