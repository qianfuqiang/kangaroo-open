package com.shshilan.web.play;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shshilan.entity.CourseLesson;
import com.shshilan.service.course.CourseLessonService;
import com.shshilan.service.course.CourseService;

/** 
 * @author lanbz 
 * @date 2013-9-27 上午10:30:25 
 * @version 1.0 
 */
@Controller
@RequestMapping(value = "/play/")
public class PlayController {

	@Autowired
	private CourseLessonService courseLessonService;
	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value = "id-{id}")
	public String play(@PathVariable("id") String id,Model model){
		
		CourseLesson lesson=courseLessonService.get(id);
		model.addAttribute("lesson", lesson);
		model.addAttribute("course", lesson.getCourse());
		model.addAttribute("lessonList", lesson.getCourse().getLessons());
		return "play/play";
	}
}
