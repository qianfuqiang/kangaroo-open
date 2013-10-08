package com.shshilan.service.system;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shshilan.entity.SystemFile;
import com.shshilan.repository.SystemFileDao;

/** 
 * @author lanbz 
 * @date 2013-9-18 上午11:09:18 
 * @version 1.0 
 */
//Spring Bean的标识.
@Component
//默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class SystemFileService {

	@Autowired
	private SystemFileDao systemFileDao;
	
	@Transactional(readOnly = false)
	public void saveDbFile(SystemFile entity) {
		systemFileDao.save(entity);
	}

	@Transactional(readOnly = false)
	public void deleteDbFile(String id) {
		systemFileDao.delete(id);
	}
	
	public SystemFile getFile(String id){
		return systemFileDao.findOne(id);
	}
	
}
