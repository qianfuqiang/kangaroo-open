package com.shshilan.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.shshilan.entity.CourseCategory;

/** 
 * @author lanbz 
 * @date 2013-9-15 下午9:20:37 
 * @version 1.0 
 */
public interface CourseCategoryDao extends PagingAndSortingRepository<CourseCategory, String>  {

}
