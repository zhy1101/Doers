package com.doers.Interceptor;

import com.doers.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class PrivilegeInterceptor extends MethodFilterInterceptor {

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		User user = (User) ActionContext.getContext().getSession().get("user");
		if(user!=null){
			return invocation.invoke();
		}else {
			return "toLogin";
		}
	}
}
