package com.shshilan.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * CourseLesson entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name = "course_lesson")
public class CourseLesson extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields
	//private String courseId;
	private String name;
	private String introduction;
	private Integer payOrNot;
	private Integer watchTimes;
	
	private String playTime;
	private String createTime;
	private Integer reviewed;
	private Integer showIndex;
	private Integer state;

	private Course course;
	
	private SystemFile file;
	// Constructors

	/** default constructor */
	public CourseLesson() {
	}

	

	// Property accessors


	
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Integer getPayOrNot() {
		return this.payOrNot;
	}

	public void setPayOrNot(Integer payOrNot) {
		this.payOrNot = payOrNot;
	}

	public Integer getWatchTimes() {
		return this.watchTimes;
	}

	public void setWatchTimes(Integer watchTimes) {
		this.watchTimes = watchTimes;
	}

	public String getPlayTime() {
		return this.playTime;
	}

	public void setPlayTime(String playTime) {
		this.playTime = playTime;
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

	
	public Integer getShowIndex() {
		return showIndex;
	}

	public void setShowIndex(Integer showIndex) {
		this.showIndex = showIndex;
	}



	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}



	@ManyToOne
	@JoinColumn(name = "courseId")
	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
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