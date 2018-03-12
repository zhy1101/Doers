package com.doers.domain;

public class Contract {
	private Long id;
	private Order belongToOder;
	private String serverTimeStart;
	private String serverTimeEnd;
	private String realName;
	private Integer price;
	private String conveyStyle;
	private String content;
	private String addFileURL;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Order getBelongToOder() {
		return belongToOder;
	}
	public void setBelongToOder(Order belongToOder) {
		this.belongToOder = belongToOder;
	}
	public String getServerTimeStart() {
		return serverTimeStart;
	}
	public void setServerTimeStart(String serverTimeStart) {
		this.serverTimeStart = serverTimeStart;
	}
	public String getServerTimeEnd() {
		return serverTimeEnd;
	}
	public void setServerTimeEnd(String serverTimeEnd) {
		this.serverTimeEnd = serverTimeEnd;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public String getConveyStyle() {
		return conveyStyle;
	}
	public void setConveyStyle(String conveyStyle) {
		this.conveyStyle = conveyStyle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAddFileURL() {
		return addFileURL;
	}
	public void setAddFileURL(String addFileURL) {
		this.addFileURL = addFileURL;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	

}
