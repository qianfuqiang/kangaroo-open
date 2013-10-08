package com.shshilan.entity;

import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import javax.persistence.Table;

import com.google.common.collect.Sets;



/**
 * Course entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "course")
public class Course extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields
	//private String categoryId;
	//private String typeId;
	private String createUserId;
	private String name;
	private String introduction;
	private String summary;
	private String lessonInfo;
	private String logo;
	private Float price;
	private Integer payOrNot;
	private String tag;
	private String createTime;
	private Integer watchTimes;
	private Integer reviewed;
	private Integer state;

	//associate
	
	private CourseCategory category;
	private CourseType type;
	
	
	private Set<CourseLesson> lessons=Sets.newHashSet();
	
	
	
	
	// Constructors

	/** default constructor */
	public Course() {
	}

	

	// Property accessors
	public String getCreateUserId() {
		return this.createUserId;
	}

	public void setCreateUserId(String createUserId) {
		this.createUserId = createUserId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSummary() {
		return summary;
	}



	public void setSummary(String summary) {
		this.summary = summary;
	}



	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getLessonInfo() {
		return this.lessonInfo;
	}

	public void setLessonInfo(String lessonInfo) {
		this.lessonInfo = lessonInfo;
	}

	public String getLogo() {
		return this.logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Integer getPayOrNot() {
		return this.payOrNot;
	}

	public void setPayOrNot(Integer payOrNot) {
		this.payOrNot = payOrNot;
	}

	public String getTag() {
		return this.tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Integer getWatchTimes() {
		return this.watchTimes;
	}

	public void setWatchTimes(Integer watchTimes) {
		this.watchTimes = watchTimes;
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
	@JoinColumn(name = "categoryId")
	public CourseCategory getCategory() {
		return category;
	}

	public void setCategory(CourseCategory category) {
		this.category = category;
	}

	@ManyToOne
	@JoinColumn(name = "typeId")
	public CourseType getType() {
		return type;
	}

	public void setType(CourseType type) {
		this.type = type;
	}


	@OneToMany(mappedBy = "course")
	@OrderBy(value = "showIndex ASC") 
	public Set<CourseLesson> getLessons() {
		return lessons;
	}



	public void setLessons(Set<CourseLesson> lessons) {
		this.lessons = lessons;
	}
	
	

}