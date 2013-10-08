package com.shshilan.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

/** 
 * @author lanbz 
 * @date 2013-9-30 下午3:45:07 
 * @version 1.0 
 */
@Entity
@Table(name = "video_convert")
public class VideoConvert  extends IdEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String oldPath;
	private String newPath;
	private String oldExpanded;
	private String newExpanded;
	private String createTime;
	private Integer reviewed;
	public String getOldPath() {
		return oldPath;
	}
	public void setOldPath(String oldPath) {
		this.oldPath = oldPath;
	}
	public String getNewPath() {
		return newPath;
	}
	public void setNewPath(String newPath) {
		this.newPath = newPath;
	}
	public String getOldExpanded() {
		return oldExpanded;
	}
	public void setOldExpanded(String oldExpanded) {
		this.oldExpanded = oldExpanded;
	}
	public String getNewExpanded() {
		return newExpanded;
	}
	public void setNewExpanded(String newExpanded) {
		this.newExpanded = newExpanded;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public Integer getReviewed() {
		return reviewed;
	}
	public void setReviewed(Integer reviewed) {
		this.reviewed = reviewed;
	}
	
	
	
}
