package com.shshilan.repository;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.shshilan.entity.SystemFile;

/** 
 * @author lanbz 
 * @date 2013-9-18 上午11:07:48 
 * @version 1.0 
 */
public interface SystemFileDao extends PagingAndSortingRepository<SystemFile, String>  {

}
