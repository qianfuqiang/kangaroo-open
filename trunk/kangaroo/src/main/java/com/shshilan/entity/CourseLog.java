package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * CourseLog entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name = "course_log")
public class CourseLog extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields

	private String courseId;
	private String oldInfo;
	private String newInfo;
	private String createTime;

	// Constructors

	/** default constructor */
	public CourseLog() {
	}

	/** full constructor */
	public CourseLog(String courseId, String oldInfo, String newInfo,
			String createTime) {
		this.courseId = courseId;
		this.oldInfo = oldInfo;
		this.newInfo = newInfo;
		this.createTime = createTime;
	}

	// Property accessors

	public String getCourseId() {
		return this.courseId;
	}

	public void setCourseId(String courseId) {
		this.courseId = courseId;
	}

	public String getOldInfo() {
		return this.oldInfo;
	}

	public void setOldInfo(String oldInfo) {
		this.oldInfo = oldInfo;
	}

	public String getNewInfo() {
		return this.newInfo;
	}

	public void setNewInfo(String newInfo) {
		this.newInfo = newInfo;
	}

	public String getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

}