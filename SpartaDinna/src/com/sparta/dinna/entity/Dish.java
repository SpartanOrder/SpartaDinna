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
 * Description:菜肴实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 上午11:16:53<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
public class Dish {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer dishId;// 菜肴ID
	@Column(nullable = false, unique = true)
	private String dishName;// 菜肴名字
	@Column(nullable = false)
	private Double dishPrice;// 菜肴单价
	@ManyToOne(targetEntity = DishType.class, cascade = CascadeType.ALL)
	@JoinColumn(name = "dishTypeId", nullable = false, columnDefinition = "Integer default 0")
	private DishType dishType;// 菜肴类别
	private String description;// 菜肴描述
	private String cooking;// 菜肴烹饪方式
	private String imgURL;// 菜肴图片地址
	@Column(nullable = false)
	private Boolean visiable;// 菜肴是否启动:true 启动 ,false 不启动

	public Dish() {
		// TODO Auto-generated constructor stub
	}

	public Integer getDishId() {
		return dishId;
	}

	public void setDishId(Integer dishId) {
		this.dishId = dishId;
	}

	public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	public Double getDishPrice() {
		return dishPrice;
	}

	public void setDishPrice(Double dishPrice) {
		this.dishPrice = dishPrice;
	}

	public DishType getDishType() {
		return dishType;
	}

	public void setDishType(DishType dishType) {
		this.dishType = dishType;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getCooking() {
		return cooking;
	}

	public void setCooking(String cooking) {
		this.cooking = cooking;
	}

	public String getImgURL() {
		return imgURL;
	}

	public void setImgURL(String imgURL) {
		this.imgURL = imgURL;
	}

	public Boolean getVisiable() {
		return visiable;
	}

	public void setVisiable(Boolean visiable) {
		this.visiable = visiable;
	}

}
