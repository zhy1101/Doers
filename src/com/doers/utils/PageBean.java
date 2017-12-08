package com.doers.utils;

import java.util.List;

public class PageBean
{
  private Integer currentPage;
  private Integer totalCount;
  private Integer pageSize;
  private Integer totalPage;
  private List list;

  public PageBean(Integer currentPage, Integer totalCount, Integer pageSize)
  {
    this.totalCount = totalCount;
    this.currentPage = currentPage;
    if (this.currentPage == null) {
      this.currentPage = Integer.valueOf(1);
    }
    this.pageSize = pageSize;
    if (this.pageSize == null) {
      this.pageSize = Integer.valueOf(5);
    }

    this.totalPage = Integer.valueOf((this.totalCount.intValue() + this.pageSize.intValue() - 1) / this.pageSize.intValue());

    if (this.currentPage.intValue() < 1) {
      this.currentPage = Integer.valueOf(1);
    }
    if (this.currentPage.intValue() > this.totalPage.intValue())
      this.currentPage = this.totalPage;
  }

  public int getStart()
  {
    return (this.currentPage.intValue() - 1) * this.pageSize.intValue();
  }
  public Integer getCurrentPage() {
    return this.currentPage;
  }
  public void setCurrentPage(Integer currentPage) {
    this.currentPage = currentPage;
  }
  public Integer getTotalCount() {
    return this.totalCount;
  }
  public void setTotalCount(Integer totalCount) {
    this.totalCount = totalCount;
  }
  public Integer getPageSize() {
    return this.pageSize;
  }
  public void setPageSize(Integer pageSize) {
    this.pageSize = pageSize;
  }
  public Integer getTotalPage() {
    return this.totalPage;
  }
  public void setTotalPage(Integer totalPage) {
    this.totalPage = totalPage;
  }
  public List getList() {
    return this.list;
  }
  public void setList(List list) {
    this.list = list;
  }
}
