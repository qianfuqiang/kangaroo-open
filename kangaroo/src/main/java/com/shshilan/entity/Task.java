package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

//JPA标识
@Entity
@Table(name = "ktask")
public class Task{

	private String title;
	private String description;
	private User user;

	protected Long id;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	   //@Id
	   // @GeneratedValue(generator="idGenerator")
	   // @GenericGenerator(name="idGenerator", strategy="uuid")
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	// JSR303 BeanValidator的校验规则
	@NotBlank
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	// JPA 基于USER_ID列的多对一关系定义
	@ManyToOne
	@JoinColumn(name = "user_id")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
