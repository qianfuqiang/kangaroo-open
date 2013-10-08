package com.shshilan.service.course;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shshilan.entity.CourseCategory;
import com.shshilan.repository.CourseCategoryDao;

/** 
 * @author lanbz 
 * @date 2013-9-15 下午9:22:08 
 * @version 1.0 
 */


//Spring Bean的标识.
@Component
//默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class CourseCategorySevice {

	private CourseCategoryDao courseCategoryDao;

	public CourseCategory getCourseCategory(String id) {
		return courseCategoryDao.findOne(id);
	}

	@Transactional(readOnly = false)
	public void saveCourseCategory(CourseCategory entity) {
		courseCategoryDao.save(entity);
	}

	@Transactional(readOnly = false)
	public void deleteCourseCategory(String id) {
		courseCategoryDao.delete(id);
	}

	public List<CourseCategory> getAllCourseCategory() {
		return (List<CourseCategory>) courseCategoryDao.findAll();
	}

	public Page<CourseCategory> getPageCourseCategory(int pageNumber, int pageSize,
			String sortType) {
		PageRequest pageRequest = buildPageRequest(pageNumber, pageSize, sortType);
		return courseCategoryDao.findAll(pageRequest);
	}

	/**
	 * 创建分页请求.
	 */
	private PageRequest buildPageRequest(int pageNumber, int pagzSize, String sortType) {
		Sort sort = null;
		if ("indexs".equals(sortType)) {
			sort = new Sort(Direction.DESC, "indexs");
		} else if ("name".equals(sortType)) {
			sort = new Sort(Direction.ASC, "name");
		}

		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}

	

	@Autowired
	public void setCourseCategoryDao(CourseCategoryDao courseCategoryDao) {
		this.courseCategoryDao = courseCategoryDao;
	}
}
