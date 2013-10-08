package com.shshilan.web.user;

import org.apache.shiro.SecurityUtils;

import com.shshilan.service.account.ShiroDbRealm.ShiroUser;

/** 
 * @author lanbz 
 * @date 2013-9-23 下午3:43:57 
 * @version 1.0 
 */
public class UserBaseController {

	
	/**
	 * 取出Shiro中的当前用户Id.
	 */
	public Long getCurrentUserId() {
		ShiroUser user = (ShiroUser) SecurityUtils.getSubject().getPrincipal();
		return user.id;
	}
}
