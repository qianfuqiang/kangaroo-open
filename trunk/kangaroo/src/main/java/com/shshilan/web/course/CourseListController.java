package com.shshilan.web.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shshilan.entity.Course;
import com.shshilan.entity.CourseType;
import com.shshilan.service.course.CourseService;
import com.shshilan.service.course.CourseTypeService;
import com.shshilan.system.Constants;

/** 
 * @author lanbz 
 * @date 2013-9-13 下午1:41:48 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/course/")
public class CourseListController {

	private static final int PAGE_SIZE = 12;
	@Autowired
	private CourseTypeService courseTypeService;
	
	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value = "list-{typeId}",method = RequestMethod.GET)
	public String list(@PathVariable String typeId,@RequestParam(value = "page", defaultValue = "1") int pageNumber,Model model) {
		
		List<CourseType> types=courseTypeService.getAllCourseType();
		Page<Course> page=null;
		if(null==typeId)typeId="all";
		if("all".equals(typeId)){
			 page=courseService.findCourseByWatchTimes(pageNumber, PAGE_SIZE, Constants.STATE_ABLE);
		}else{
			 page=courseService.findCourseByTypeId(typeId, pageNumber,PAGE_SIZE, "watchTimes", Constants.STATE_ABLE);
		}

		
		model.addAttribute("types", types);
		model.addAttribute("page", page);
		model.addAttribute("typeId", typeId);
		
		return "course/list";
	}
	
}
