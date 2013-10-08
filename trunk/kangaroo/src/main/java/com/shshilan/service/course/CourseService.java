package com.shshilan.service.course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shshilan.entity.Course;
import com.shshilan.repository.CourseDao;

/** 
 * @author lanbz 
 * @date 2013-9-22 下午3:41:43 
 * @version 1.0 
 */
@Component
@Transactional(readOnly = true)
public class CourseService {


	@Autowired
	private CourseDao courseDao;
	
	@Transactional(readOnly = false)
	public Course save(Course entity){
		return courseDao.save(entity);
	}
	
	@Transactional(readOnly = false)
	public void delete(String id){
		courseDao.delete(id);
	}
	
	public Course findOne(String id){
		return courseDao.findOne(id);
	}
	
	
	public Page<Course> findCourseByCreateUserId(String createUserId,int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		return courseDao.findByCreateUserId(createUserId,pageRequest);
	}
	
	/**
	 * 创建分页请求.
	 */
	private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
		Sort sort= new Sort(Direction.DESC, "createTime");;
		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}
	

	public Page<Course> findCourseByTypeId(String typeId,int pageNumber, int size,
			String sortType,Integer state) {
		Sort sort = new Sort(Direction.DESC, sortType);
		PageRequest pageRequest = new PageRequest(pageNumber-1,size,sort);
		return courseDao.findByTypeIdAndState(typeId,state,pageRequest);
	}
	
	
	public Page<Course> findCourseByWatchTimes(int pageNumber, int size,Integer state) {
		Sort sort = new Sort(Direction.DESC, "watchTimes");
		PageRequest pageRequest = new PageRequest(pageNumber-1,size,sort);
		return courseDao.findByState(state,pageRequest);
	}
	
	
	public Page<Course> findNewCourseByCreateTime(int pageNumber, int size,Integer state) {
		Sort sort = new Sort(Direction.DESC, "createTime");
		PageRequest pageRequest = new PageRequest(pageNumber-1,size,sort);
		return courseDao.findByState(state,pageRequest);
	}
	
}
