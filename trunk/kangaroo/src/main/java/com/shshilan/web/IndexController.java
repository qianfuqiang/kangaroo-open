package com.shshilan.web;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.common.collect.Maps;
import com.shshilan.entity.Course;
import com.shshilan.entity.CourseType;
import com.shshilan.service.course.CourseService;
import com.shshilan.service.course.CourseTypeService;
import com.shshilan.system.AppLoadCache;
import com.shshilan.system.Constants;
/** 
 * @author lanbz 
 * @date 2013-9-13 上午10:53:57 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/")
public class IndexController {

	@Autowired
	private CourseTypeService courseTypeService;
	
	@Autowired
	private CourseService courseService;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String home() {
		return "redirect:/index.do";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "index",method = RequestMethod.GET)
	public String index(Model model) {
		
		Page<Course> newCourse=courseService.findNewCourseByCreateTime(1, 8, Constants.STATE_ABLE);
		
		Page<Course> hotCourse=courseService.findCourseByWatchTimes(1, 8,  Constants.STATE_ABLE);
		
		Map<String,List<Course>> courseMap=Maps.newLinkedHashMap();
		List<CourseType> types=(List<CourseType>) AppLoadCache.getInstance().get(AppLoadCache.APP_CACHE_KEY_COURSETYPE);
		
		for (CourseType ct : types) {
			List<Course> list=(List<Course>) AppLoadCache.getInstance().get("index_type_"+ct.getId());
			courseMap.put(ct.getName(), list);
		}
		
		
		model.addAttribute("newCourse", newCourse.getContent());
		model.addAttribute("hotCourse", hotCourse.getContent());
		model.addAttribute("courseMap", courseMap);
		
		
		
		return "index";
	}


}
