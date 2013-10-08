package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * @author lanbz 
 * @date 2013-9-18 上午11:02:00 
 * @version 1.0 
 */
@Entity
@Table(name = "system_file")
public class SystemFile extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String fileUrl;
	private String fileType;
	private String createTime;
	private Integer state;
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	public String getFileType() {
		return fileType;
	}
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
	
	
}
