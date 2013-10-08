package com.shshilan.system.timer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.shshilan.entity.VideoConvert;
import com.shshilan.service.system.VideoConvertService;
import com.shshilan.system.Constants;
import com.shshilan.system.convert.ConvertServer;

/** 
 * @author lanbz 
 * @date 2013-9-30 下午5:02:11 
 * @version 1.0 
 */
public class ConvertVideoTimer {

	@Autowired
	private VideoConvertService videoConvertService;
	
	
	public void run(){
		
		List<VideoConvert>  list=videoConvertService.findByReviewed(Constants.REVIEWE_DISABLE);
		for (VideoConvert convert : list) {
			ConvertServer.put(convert);
		}
		
	}
}
