package com.shshilan.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.shshilan.entity.Course;

/** 
 * @author lanbz 
 * @date 2013-9-17 下午6:32:29 
 * @version 1.0 
 */
public interface CourseDao extends PagingAndSortingRepository<Course, String> {

	
	Page<Course> findByCreateUserId(String createUserId,Pageable pageRequest);
	
	Page<Course> findByTypeIdAndState(String typeId,Integer state,Pageable pageRequest);
	
	Page<Course>  findByState(Integer state,Pageable pageRequest);
}
