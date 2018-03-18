package com.doers.Action;

import org.apache.struts2.ServletActionContext;

import com.doers.Service.PushService;
import com.doers.Service.ZanService;
import com.doers.domain.Article;
import com.doers.domain.Production;
import com.doers.domain.Push;
import com.doers.domain.User;
import com.doers.domain.Zan;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class ZanAction extends ActionSupport {
	
	private ZanService zanService;


	public void setZanService(ZanService zanService) {
		this.zanService = zanService;
	}
	public String addZan(){
		Zan zan =new Zan();
		zan.setZan_user((User) ActionContext.getContext().getSession().get("user"));
		Production  production = (Production) ActionContext.getContext().getSession().get("production");
		zan.setZan_pro(production);
		production.setZan(production.getZan()+1);	
		zanService.addZan(zan);
		return NONE;
	}
	
	public String removeZan() throws Exception{
		Long uid = ((User)ActionContext.getContext().getSession().get("user")).getUid();
		Production  production = (Production) ActionContext.getContext().getSession().get("production");
		Zan zan =zanService.findZanByCondition(uid,production.getProductionId());
		production.setZan(production.getZan()-1);
		zanService.removeZan(zan);
		return NONE;
	}
	
	public String checkZan() throws Exception{
		Long uid = ((User)ActionContext.getContext().getSession().get("user")).getUid();
		Long pid=((Production) ActionContext.getContext().getSession().get("production")).getProductionId();
		Zan zan =zanService.findZanByCondition(uid,pid);
		boolean isZan = false;
		if(zan!=null) isZan=true;
		JSONObject j = new  JSONObject();
		j.put("isZan", isZan);
	    String result = JSONObject.fromObject(j).toString();
		ServletActionContext.getResponse().getWriter().write(result);
		return null;
	}
	
}
