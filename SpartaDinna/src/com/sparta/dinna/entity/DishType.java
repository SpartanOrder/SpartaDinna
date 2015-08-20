/**
 * 
 */
package com.sparta.dinna.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Description:菜肴类别实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 上午11:24:25<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
public class DishType {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String dishTypeId;// 菜肴类别ID
	@Column(nullable = false, unique = true)
	private String dishTypeName;// 菜肴类别名字
	private String description;// 菜肴类别描述

	public DishType() {
		// TODO Auto-generated constructor stub
	}

	public String getDishTypeId() {
		return dishTypeId;
	}

	public void setDishTypeId(String dishTypeId) {
		this.dishTypeId = dishTypeId;
	}

	public String getDishTypeName() {
		return dishTypeName;
	}

	public void setDishTypeName(String dishTypeName) {
		this.dishTypeName = dishTypeName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
