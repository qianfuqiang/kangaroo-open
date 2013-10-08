package com.shshilan.service.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shshilan.entity.CourseLesson;
import com.shshilan.repository.CourseLessonDao;

/** 
 * @author lanbz 
 * @date 2013-9-18 下午3:02:29 
 * @version 1.0 
 */
@Component
@Transactional(readOnly = true)
public class CourseLessonService {

	
	@Autowired
	private CourseLessonDao courseLessonDao;
	
	public List<CourseLesson> findByCourseId(String courseId){

		Sort sort=new Sort(Direction.ASC, "showIndex");
		return courseLessonDao.findByCourseId(courseId,sort);
	}
	
	public CourseLesson get(String id){
		return courseLessonDao.findOne(id);
	}
	
	@Transactional(readOnly = false)
	public void save(CourseLesson entity){
		courseLessonDao.save(entity);
	}
	
	@Transactional(readOnly =false)
	public void delete(String id){
		courseLessonDao.delete(id);
	}
}
