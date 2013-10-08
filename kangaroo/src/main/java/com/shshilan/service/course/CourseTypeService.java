package com.shshilan.service.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shshilan.entity.CourseType;
import com.shshilan.repository.CourseTypeDao;


/** 
 * @author lanbz 
 * @date 2013-9-16 下午6:14:38 
 * @version 1.0 
 */
//Spring Bean的标识.
@Component
//默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class CourseTypeService {

	@Autowired
	private CourseTypeDao courseTypeDao;
	
	public CourseType get(String id) {
		return courseTypeDao.findOne(id);
	}

	@Transactional(readOnly = false)
	public void save(CourseType entity) {
		courseTypeDao.save(entity);
	}

	@Transactional(readOnly = false)
	public void delete(String id) {
		courseTypeDao.delete(id);
	}

	public List<CourseType> getAllCourseType() {
		return (List<CourseType>) courseTypeDao.findAll();
	}

	public Page<CourseType> getPageCourseType(int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		return courseTypeDao.findAll(pageRequest);
	}

	/**
	 * 创建分页请求.
	 */
	private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
		Sort sort = new Sort(Direction.DESC, "indexs");;
		
		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}

	

}
