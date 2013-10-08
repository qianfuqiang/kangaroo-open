package com.shshilan.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.shshilan.entity.CourseLog;

/** 
 * @author lanbz 
 * @date 2013-9-17 下午6:33:55 
 * @version 1.0 
 */
public interface CourseLogDao extends PagingAndSortingRepository<CourseLog, String>{

}
