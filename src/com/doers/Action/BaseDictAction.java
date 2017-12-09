package com.doers.Action;

import java.util.List;

import org.apache.logging.log4j.core.config.json.JsonConfiguration;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import com.doers.domain.BaseDict;
import com.doers.Service.BaseDictService;


import net.sf.json.JSONArray;

public class BaseDictAction extends ActionSupport {

	private String dict_type_code;
	
	private BaseDictService baseDictService;
	@Override
	public String execute() throws Exception {
		List<BaseDict> list = baseDictService.getListByTypeCode(dict_type_code);
		String json = JSONArray.fromObject(list).toString();
		ServletActionContext.getResponse().setContentType("application/json;charset=utf-8");
		ServletActionContext.getResponse().getWriter().write(json);
		return null;
	}
	public String getDict_type_code() {
		return dict_type_code;
	}
	public void setDict_type_code(String dict_type_code) {
		this.dict_type_code = dict_type_code;
	}

	public void setBaseDictService(BaseDictService baseDictService) {
		this.baseDictService = baseDictService;
	}
		
	
	
}
