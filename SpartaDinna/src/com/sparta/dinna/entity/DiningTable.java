package com.sparta.dinna.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Description:餐桌实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 下午1:53:06<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
public class DiningTable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer tableId;// 餐桌id
	@Column(nullable = false, unique = true)
	private String tableName;// 餐桌名字
	@ManyToOne(targetEntity = Floor.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "floorId", nullable = false, columnDefinition = "Integer default 0")
	private Floor floor;// 餐桌所属楼层

	public DiningTable() {
		// TODO Auto-generated constructor stub
	}

	public Integer getTableId() {
		return tableId;
	}

	public void setTableId(Integer tableId) {
		this.tableId = tableId;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public Floor getFloor() {
		return floor;
	}

	public void setFloor(Floor floor) {
		this.floor = floor;
	}

}
