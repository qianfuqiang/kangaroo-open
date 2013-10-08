package com.shshilan.web.user.designcourse;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.PropertyFilter;
import com.shshilan.entity.Course;
import com.shshilan.entity.CourseLesson;
import com.shshilan.entity.SystemFile;
import com.shshilan.service.course.CourseLessonService;
import com.shshilan.service.course.CourseService;
import com.shshilan.service.system.SystemFileService;
import com.shshilan.system.Constants;
import com.shshilan.system.utils.CommonUtils;
import com.shshilan.web.user.UserBaseController;

/** 
 * use for CourseLesson add update delete find
 * 
 * List action    : GET /user/designcourse/courseLesson/list/{course_id}.do
 * Create/Update page   : POST  /user/designcourse/courseLesson/create
 * Delete action : GET /user/designcourse/courseLesson/delete/{lesson_id}.do
 * GET action :GET /user/designcourse/courseLesson/get/{lesson_id}.do
 * @author lanbz 
 * 
 */
@Controller
@RequestMapping(value = "/user/designcourse/courseLesson/")
public class CourseLessonController extends UserBaseController{

	@Autowired
	private CourseLessonService courseLessonService;
	
	@Autowired
	private CourseService courseService;
	
	@Autowired
	private SystemFileService systemFileService;
	
	@RequestMapping(value = "list/{course_id}")
	@ResponseBody
	public String list(@PathVariable("course_id") String id,Model model) {

		Course course=courseService.findOne(id);
		Iterator<CourseLesson> itor=null;
		List<CourseLesson> list=null;
		if(null!=course.getLessons()){
			itor=course.getLessons().iterator();
		}
		if(null!=itor){
			list=new ArrayList<CourseLesson>();
			while (itor.hasNext()) {
				CourseLesson object = itor.next();
				
				list.add(object);
			}
		}
		
		PropertyFilter filter=new PropertyFilter(){

			@Override
			public boolean apply(Object source, String name, Object value) {
				if("course".equals(name))
				return false;
				return true;
			}
			
		};
		//JSONObject.toJSONString(list, filter);
		return JSONObject.toJSONString(list,filter);
	}
	
	
	@RequestMapping(value = "create")
	@ResponseBody
	public String create(@Valid CourseLesson entity,Model model) {
		if(null!=entity.getCourse() && !"".equals(entity.getCourse().getId()))
		{
		
		  entity.setState(Constants.STATE_ABLE);
		  entity.setCreateTime(CommonUtils.date2String(new Date()));
		  entity.setReviewed(Constants.REVIEWE_DISABLE);
		  if(null != entity.getFile())
		  if(null == entity.getFile().getId() || "".equals(entity.getFile().getId())) {
			  entity.setFile(null);
		  }else{
			  SystemFile SystemFile=systemFileService.getFile(entity.getFile().getId());
			  entity.setFile(SystemFile);
		  }
		  
		  courseLessonService.save(entity);
		  List<CourseLesson> list=courseLessonService.findByCourseId(entity.getCourse().getId());
		  return JSON.toJSONString(list);
		}
		return JSON.toJSONString("error");
	}
	
	
	
	
	
	
	@RequestMapping(value = "delete/{lesson_id}",method = RequestMethod.GET)
	@ResponseBody
	public String delete(@PathVariable("lesson_id") String id) {
		courseLessonService.delete(id);
		return JSON.toJSONString("delete ok");
	}
	
	
	@RequestMapping(value = "get/{lesson_id}",method = RequestMethod.GET)
	@ResponseBody
	public String get(@PathVariable("lesson_id") String id) {
		CourseLesson courseLesson=courseLessonService.get(id);
		return JSON.toJSONString(courseLesson);
	}
	
	
}
