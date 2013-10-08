package com.shshilan.repository;

import org.springframework.data.repository.PagingAndSortingRepository;


import com.shshilan.entity.CourseType;

/** 
 * @author lanbz 
 * @date 2013-9-16 下午6:13:11 
 * @version 1.0 
 */
public interface CourseTypeDao extends PagingAndSortingRepository<CourseType, String>  {

}
