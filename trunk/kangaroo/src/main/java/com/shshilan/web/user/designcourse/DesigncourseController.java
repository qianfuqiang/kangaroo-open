package com.shshilan.web.user.designcourse;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shshilan.entity.Course;
import com.shshilan.entity.CourseCategory;
import com.shshilan.entity.CourseType;
import com.shshilan.service.course.CourseCategorySevice;
import com.shshilan.service.course.CourseService;
import com.shshilan.service.course.CourseTypeService;
import com.shshilan.web.user.UserBaseController;


/** 
 * @author lanbz 
 * @date 2013-9-17 上午11:36:31 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/user/designcourse/")
public class DesigncourseController extends UserBaseController{

	
	@Autowired
	private CourseCategorySevice courseCategorySevice;
	
	@Autowired
	private CourseTypeService courseTypeService;
	
	@Autowired
	private CourseService courseService;
	
	
	@RequestMapping(value = "create",method = RequestMethod.GET)
	public String create(Model model) {
		List<CourseCategory> categorys=courseCategorySevice.getAllCourseCategory();
		List<CourseType> types=courseTypeService.getAllCourseType();
		model.addAttribute("categorys", categorys);
		model.addAttribute("types", types);
		return "user/designcourse/create";
	}
	
	
	@RequestMapping(value = "modify",method = RequestMethod.GET)
	public String modify( String id,Model model) {
		
		Course course=courseService.findOne(id);
		List<CourseCategory> categorys=courseCategorySevice.getAllCourseCategory();
		List<CourseType> types=courseTypeService.getAllCourseType();
		model.addAttribute("categorys", categorys);
		model.addAttribute("types", types);
		model.addAttribute("course", course);
		return "user/designcourse/modify";
	}
	
}
