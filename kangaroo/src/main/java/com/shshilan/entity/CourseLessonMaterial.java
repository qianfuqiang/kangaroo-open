package com.shshilan.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * CourseLessonMaterial entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name = "course_lesson_material")
public class CourseLessonMaterial extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields

	private String lessonId;
	private String name;
	private String createTime;
	private Integer reviewed;
	private Integer state;

	private SystemFile file;
	// Constructors

	/** default constructor */
	public CourseLessonMaterial() {
	}

	// Property accessors

	public String getLessonId() {
		return this.lessonId;
	}

	public void setLessonId(String lessonId) {
		this.lessonId = lessonId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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



	 @OneToOne(cascade = CascadeType.ALL)
	 @JoinColumn(name = "fileId")
	public SystemFile getFile() {
		return file;
	}

	public void setFile(SystemFile file) {
		this.file = file;
	}
	
	

}