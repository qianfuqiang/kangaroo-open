package com.shshilan.service.course;

import static org.junit.Assert.assertNotNull;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springside.modules.test.security.shiro.ShiroTestUtils;

import com.shshilan.entity.CourseCategory;
import com.shshilan.repository.CourseCategoryDao;
import com.shshilan.service.account.ShiroDbRealm.ShiroUser;

/** 
 * @author lanbz 
 * @date 2013-9-15 下午9:43:04 
 * @version 1.0 
 */
public class CourseCategorySeviceTest {
	
	@InjectMocks
	private CourseCategorySevice courseCategorySevice;

	@Mock
	private CourseCategoryDao courseCategoryDao;


	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		ShiroTestUtils.mockSubject(new ShiroUser(3L, "foo", "Foo"));
	}

	//@Test
	public void addCourseCategory() {
		CourseCategory entity =new CourseCategory();
		entity.setName("数据库");
		courseCategorySevice.saveCourseCategory(entity);
		assertNotNull(entity.getId());

	}


}
