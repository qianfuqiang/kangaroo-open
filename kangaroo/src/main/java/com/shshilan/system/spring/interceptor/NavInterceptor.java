package com.shshilan.system.spring.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.shshilan.system.Constants;
import com.shshilan.system.navigation.Navigation;
import com.shshilan.system.navigation.NavigationBuilder;
import com.shshilan.system.navigation.NavigationObserver;



public class NavInterceptor extends HandlerInterceptorAdapter {
	private String template;
	private String navigation;

	private NavigationBuilder navBuilder;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) {
		Navigation nav = null;
		if(!NavigationObserver.plugNav){		
			nav=navBuilder.build(request.getRequestURI());
		}else{
			String url=request.getRequestURI();
			if(!"".equals(NavigationObserver.contextPath)){
			url=url.replaceFirst(NavigationObserver.contextPath,"");
			}
			nav=navBuilder.build(NavigationObserver.getAllNavDocument(),url);
			
		}
		request.setAttribute(Constants.SHSHILAN_NAVIGATION, nav);
		return true;
	}
	
	public void init(){
		if(!NavigationObserver.plugNav){
		     navBuilder = new NavigationBuilder(this.navigation);
		}else{
			 navBuilder = new NavigationBuilder();
		}
	}
	
	
	public String getNavigation() {
		return navigation;
	}
	public void setNavigation(String navigation) {
		this.navigation = navigation;
	}
	public String getTemplate() {
		return template;
	}
	public void setTemplate(String template) {
		this.template = template;
	}

	
	
}
