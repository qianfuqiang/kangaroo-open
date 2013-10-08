package com.shshilan.repository;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.shshilan.entity.VideoConvert;

/** 
 * @author lanbz 
 * @date 2013-9-30 下午3:50:34 
 * @version 1.0 
 */
public interface VideoConvertDao extends PagingAndSortingRepository<VideoConvert, String>{

	List<VideoConvert> findByReviewed(Integer reviewed);
	
}

