package com.shshilan.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** 
 * @author lanbz 
 * @date 2013-9-15 下午4:58:50 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/admin/")
public class DefaultController {

	
	@RequestMapping(method = RequestMethod.GET)
	public String home() {
		return "admin/index";
	}
	
	@RequestMapping(value = "index",method = RequestMethod.GET)
	public String index() {
		return "admin/index";
	}
}
