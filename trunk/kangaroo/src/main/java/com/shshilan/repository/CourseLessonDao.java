package com.shshilan.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.shshilan.entity.CourseLesson;

/** 
 * @author lanbz 
 * @date 2013-9-17 下午6:32:52 
 * @version 1.0 
 */
public interface CourseLessonDao extends PagingAndSortingRepository<CourseLesson, String>{

	List<CourseLesson> findByCourseId(String id,Sort sort);
}
