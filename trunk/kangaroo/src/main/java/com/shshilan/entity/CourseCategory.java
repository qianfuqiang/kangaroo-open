package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * CourseCategory entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name = "course_category")
public class CourseCategory extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields
	private String name;
	private String indexs;

	// Constructors

	/** default constructor */
	public CourseCategory() {
	}

	/** full constructor */
	public CourseCategory(String name) {
		this.name = name;
	}

	// Property accessors
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIndexs() {
		return indexs;
	}

	public void setIndexs(String indexs) {
		this.indexs = indexs;
	}

}