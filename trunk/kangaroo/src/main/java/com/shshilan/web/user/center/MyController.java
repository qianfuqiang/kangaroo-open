package com.shshilan.web.user.center;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shshilan.entity.Course;
import com.shshilan.service.course.CourseService;
import com.shshilan.web.user.UserBaseController;

/** 
 * @author lanbz 
 * @date 2013-9-23 上午11:42:38 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/user/center")
public class MyController extends UserBaseController{

	@Autowired
	private CourseService courseService;
	
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String my() {
		return "redirect:/user/center/my.do";
	}
	
	@RequestMapping(value = "my",method = RequestMethod.GET)
	public String index(Model model) {
		Page<Course> page=courseService.findCourseByCreateUserId(this.getCurrentUserId()+"", 1, 1000, null);
		model.addAttribute("mycourse", page);
		return "/user/center/my";
	}
	
}
