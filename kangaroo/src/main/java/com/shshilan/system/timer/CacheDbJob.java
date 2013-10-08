package com.shshilan.system.timer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;

import com.shshilan.entity.Course;
import com.shshilan.entity.CourseType;
import com.shshilan.service.course.CourseService;
import com.shshilan.service.course.CourseTypeService;
import com.shshilan.system.AppLoadCache;
import com.shshilan.system.Constants;



/** 
 * @author lanbz 
 * @date 2013-9-26 下午4:14:24 
 * @version 1.0 
 */
public class CacheDbJob  {

	@Autowired
	private CourseTypeService courseTypeService;
	
	@Autowired
	private CourseService courseService;
	
	
	public void runAllTask(){
		CourseTypeCacheTask();
		indexCacheTask();
	}

	public void CourseTypeCacheTask(){
		List<CourseType> appCourseTypeCache=courseTypeService.getAllCourseType();
	 AppLoadCache.getInstance().put(AppLoadCache.APP_CACHE_KEY_COURSETYPE, appCourseTypeCache);
	}
	
	//首页 分类 缓存
     public void indexCacheTask(){
    	 List<CourseType> appCourseTypeCache=courseTypeService.getAllCourseType();
		   for (CourseType courseType : appCourseTypeCache) {
			   Page<Course> page=courseService.findCourseByTypeId(courseType.getId(), 1, 3,"createTime", Constants.STATE_ABLE);
			   if(null!=page){
			     List<Course> tmplist=page.getContent();
			     if(null!=tmplist)
			    	 AppLoadCache.getInstance().put("index_type_"+courseType.getId(),tmplist);
			   }
		  }
	}
	
}
