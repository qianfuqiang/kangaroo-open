package com.shshilan.web.course;

import java.util.Iterator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.shshilan.entity.Course;
import com.shshilan.entity.CourseLesson;
import com.shshilan.service.course.CourseService;

/** 
 * @author lanbz 
 * @date 2013-9-24 下午4:31:29 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/course/")
public class DetailController {

	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value = "detail/{id}",method = RequestMethod.GET)
	public String detail(@PathVariable String id,Model model){
		
		Course course=courseService.findOne(id);
		model.addAttribute("course", course);
		return "course/detail";
	}
	
	
	@RequestMapping(value = "playCourse/{id}",method = RequestMethod.GET)
	public String playCourse(@PathVariable String id){
		Course course=courseService.findOne(id);
		String result="404";
		
		if(null!=course.getLessons() && course.getLessons().size()>0){
		   @SuppressWarnings("rawtypes")
		   Iterator ite= course.getLessons().iterator();
		   CourseLesson lesson=(CourseLesson) ite.next();
		   result=lesson.getId();
		   result="redirect:/play/id-"+result+".do";
		}
		
		return result;
	}
}
