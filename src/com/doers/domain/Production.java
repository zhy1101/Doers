package com.doers.domain;

public class Production
{
  private long productionId;
  private String productionTitle;
  private String content;
  private String big_kind;
  private String small_kind;
  private String time;
  private String coverURL;
  private int zan;
  private String shortcontent;
  private User user;

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
  public String getBig_kind() {
    return this.big_kind;
  }
  public void setBig_kind(String big_kind) {
    this.big_kind = big_kind;
  }
  public String getSmall_kind() {
    return this.small_kind;
  }
  public void setSmall_kind(String small_kind) {
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