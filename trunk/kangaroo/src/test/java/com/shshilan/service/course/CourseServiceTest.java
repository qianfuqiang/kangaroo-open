package com.shshilan.service.course;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.domain.Page;
import org.springside.modules.test.security.shiro.ShiroTestUtils;

import com.shshilan.entity.Course;
import com.shshilan.entity.CourseCategory;
import com.shshilan.repository.CourseCategoryDao;
import com.shshilan.repository.CourseDao;
import com.shshilan.service.account.ShiroDbRealm.ShiroUser;

/** 
 * @author lanbz 
 * @date 2013-9-23 下午3:34:12 
 * @version 1.0 
 */
public class CourseServiceTest {

	@InjectMocks
	private CourseService courseService;

	@Mock
	private CourseDao courseDao;


	@Before
	public void setUp() {
		MockitoAnnotations.initMocks(this);
		ShiroTestUtils.mockSubject(new ShiroUser(3L, "foo", "Foo"));
	}

	//@Test
	public void testfindCourseByCreateUserId() {
		Page<Course> p=courseService.findCourseByCreateUserId("1", 1, 5, null);
		List<Course> list=p.getContent();
		
		list.size();

	}

}
