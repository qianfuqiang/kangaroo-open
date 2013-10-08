package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * CourseLessonLog entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name="course_lesson_log")
public class CourseLessonLog extends IdEntity{

	
	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String lessonId;
	private String newInfo;
	private String oldInfo;
	private String createTime;

	// Constructors

	/** default constructor */
	public CourseLessonLog() {
	}

	/** full constructor */
	public CourseLessonLog(String lessonId, String newInfo, String oldInfo,
			String createTime) {
		this.lessonId = lessonId;
		this.newInfo = newInfo;
		this.oldInfo = oldInfo;
		this.createTime = createTime;
	}

	// Property accessors

	public String getLessonId() {
		return this.lessonId;
	}

	public void setLessonId(String lessonId) {
		this.lessonId = lessonId;
	}

	public String getNewInfo() {
		return this.newInfo;
	}

	public void setNewInfo(String newInfo) {
		this.newInfo = newInfo;
	}

	public String getOldInfo() {
		return this.oldInfo;
	}

	public void setOldInfo(String oldInfo) {
		this.oldInfo = oldInfo;
	}

	public String getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

}