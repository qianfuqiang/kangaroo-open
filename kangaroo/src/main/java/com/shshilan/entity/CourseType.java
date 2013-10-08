package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * CourseType entity. @author MyEclipse Persistence Tools
 */

@Entity
@Table(name = "course_type")
public class CourseType extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields
	private String name;
	private String indexs;

	// Constructors

	/** default constructor */
	public CourseType() {
	}

	/** full constructor */
	public CourseType(String name) {
		this.name = name;
	}


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