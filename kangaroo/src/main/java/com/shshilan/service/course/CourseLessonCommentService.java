package com.shshilan.service.course;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.shshilan.entity.CourseLessonComment;
import com.shshilan.repository.CourseLessonCommentDao;

/** 
 * @author lanbz 
 * @date 2013-9-24 上午10:22:51 
 * @version 1.0 
 */
@Component
//默认将类中的所有public函数纳入事务管理.
@Transactional(readOnly = true)
public class CourseLessonCommentService {

	@Autowired
	private CourseLessonCommentDao courseLessonCommentDao;
	
	
	@Transactional(readOnly = false)
	public CourseLessonComment save (CourseLessonComment entity){
		return courseLessonCommentDao.save(entity);
	}
	
	@Transactional(readOnly = false)
	public void delete (String id){
		courseLessonCommentDao.delete(id);
	}
 
	
	public Page<CourseLessonComment> findByCourseLessonId(String lessonId,int pageNumber, int pagzSize, Integer state){
		PageRequest pageRequest = buildPageRequest(pageNumber,pagzSize);
		return courseLessonCommentDao.findByLessonIdAndState(lessonId, state, pageRequest);
	}
	
	/**
	 * 创建分页请求.
	 */
	private PageRequest buildPageRequest(int pageNumber, int pagzSize) {
		Sort sort = new Sort(Direction.DESC, "createTime");
		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}

}
