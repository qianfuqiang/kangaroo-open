package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * CourseLessonComment entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "course_lesson_comment")
public class CourseLessonComment extends IdEntity{


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields
	//private String lessonId;
	private String createUserId;
	private String comment;
	private String createTime;
	private Integer reviewed;
	private Integer state;

	private CourseLesson lesson;
	// Constructors

	/** default constructor */
	public CourseLessonComment() {
	}

	

	// Property accessors
	
	public String getCreateUserId() {
		return this.createUserId;
	}

	public void setCreateUserId(String createUserId) {
		this.createUserId = createUserId;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Integer getReviewed() {
		return this.reviewed;
	}

	public void setReviewed(Integer reviewed) {
		this.reviewed = reviewed;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}


	@ManyToOne
	@JoinColumn(name = "lessonId")
	public CourseLesson getLesson() {
		return lesson;
	}


	public void setLesson(CourseLesson lesson) {
		this.lesson = lesson;
	}
	
	

}