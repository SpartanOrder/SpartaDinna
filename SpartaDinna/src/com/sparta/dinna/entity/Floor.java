package com.sparta.dinna.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

/**
 * Description:楼层实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 下午1:55:39<br>
 * @author Wind
 * @version 1.0
 */
@Component
@Entity
@Table
public class Floor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer floorId;// 楼层id
	@Column(nullable = false, unique = true)
	private String floorName;// 楼层名字

	public Floor() {
		// TODO Auto-generated constructor stub
	}

	public Integer getFloorId() {
		return floorId;
	}

	public void setFloorId(Integer floorId) {
		this.floorId = floorId;
	}

	public String getFloorName() {
		return floorName;
	}

	public void setFloorName(String floorName) {
		this.floorName = floorName;
	}
}
