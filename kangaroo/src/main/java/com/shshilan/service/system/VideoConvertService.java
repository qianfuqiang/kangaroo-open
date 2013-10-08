package com.shshilan.service.system;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shshilan.entity.VideoConvert;
import com.shshilan.repository.VideoConvertDao;

/** 
 * @author lanbz 
 * @date 2013-9-30 下午3:52:53 
 * @version 1.0 
 */
@Component
@Transactional(readOnly = true)
public class VideoConvertService {

	@Autowired
	private VideoConvertDao videoConvertDao;
	
	
	@Transactional(readOnly = false)
	public VideoConvert sava(VideoConvert entity){
		return videoConvertDao.save(entity);
	}
	
	
	@Transactional(readOnly = false)
	public void delete(String id){
		videoConvertDao.delete(id);
	}
	
	
	public List<VideoConvert> findByReviewed(Integer reviewed) {
		return videoConvertDao.findByReviewed(reviewed);
	}
	
	public VideoConvert get(String id) {
		return videoConvertDao.findOne(id);
	}
	
}
