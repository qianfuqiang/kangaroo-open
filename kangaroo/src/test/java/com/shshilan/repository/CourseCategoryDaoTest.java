package com.shshilan.repository;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springside.modules.test.spring.SpringTransactionalTestCase;

import com.shshilan.entity.CourseCategory;

/** 
 * @author lanbz 
 * @date 2013-9-15 下午9:52:55 
 * @version 1.0 
 */
@ContextConfiguration(locations = { "/applicationContext.xml" })
public class CourseCategoryDaoTest extends SpringTransactionalTestCase {

	@Autowired
	private CourseCategoryDao courseCategoryDao;
	
	
	@Test
	public void addCourseCategory() {
		CourseCategory entity =new CourseCategory();
		entity.setName("数据库");
		courseCategoryDao.save(entity);
		assertNotNull(entity.getId());

	}
}
