package com.doers.Action;

import org.apache.struts2.ServletActionContext;

import com.doers.Service.PushService;
import com.doers.domain.Article;
import com.doers.domain.Push;
import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;

public class PushAction extends ActionSupport {
	private PushService pushService;
	
	
	public void setPushService(PushService pushService) {
		this.pushService = pushService;
	}
	public String addPush(){
		Push push =new Push();
		push.setPush_user((User) ActionContext.getContext().getSession().get("user"));
		push.setPush_article((Article) ActionContext.getContext().getSession().get("article"));
		pushService.addPush(push);
		return NONE;
	}
	public String removePush() throws Exception{
		Long uid = ((User)ActionContext.getContext().getSession().get("user")).getUid();
		Long aid=((Article) ActionContext.getContext().getSession().get("article")).getArticleId();
		Push push =pushService.findPushByCondition(uid,aid);
		pushService.removePush(push);
		return NONE;
	}
	public String checkPush() throws Exception{
		Long uid = ((User)ActionContext.getContext().getSession().get("user")).getUid();
		Long aid=((Article) ActionContext.getContext().getSession().get("article")).getArticleId();
		Push push =pushService.findPushByCondition(uid,aid);
		boolean isPush = false;
		if(push!=null) isPush=true;
		JSONObject j = new  JSONObject();
		j.put("isPush", isPush);
	    String result = JSONObject.fromObject(j).toString();
		ServletActionContext.getResponse().getWriter().write(result);
		return NONE;
	}
}
