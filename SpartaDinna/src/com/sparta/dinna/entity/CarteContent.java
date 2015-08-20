package com.sparta.dinna.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Description:餐单内容实体类：主要是点了什么样的菜<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 上午11:24:57<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
public class CarteContent {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer CarteId;// 餐单内容ID
	@ManyToOne(targetEntity = Dish.class)
	@JoinColumn(name = "dishId", nullable = false, referencedColumnName = "dishId")
	private Dish dish;// 菜肴ID
	@Column(nullable = false)
	private Integer nums;// 菜肴数量
	@Column(nullable = false, unique = true)
	private Double totalPrice;// 菜肴总价
	@ManyToOne(targetEntity = CarteInfo.class)
	@JoinColumn(name = "CarteInforId", nullable = false, referencedColumnName = "carteId")
	private CarteInfo carteInfo;// 餐单信息ID
	private String specialDescriprion;// 特殊菜式

	public CarteContent() {
		// TODO Auto-generated constructor stub
	}

	public Integer getCarteId() {
		return CarteId;
	}

	public void setCarteId(Integer carteId) {
		CarteId = carteId;
	}

	public Dish getDish() {
		return dish;
	}

	public void setDish(Dish dish) {
		this.dish = dish;
	}

	public Integer getNums() {
		return nums;
	}

	public void setNums(Integer nums) {
		this.nums = nums;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getSpecialDescriprion() {
		return specialDescriprion;
	}

	public void setSpecialDescriprion(String specialDescriprion) {
		this.specialDescriprion = specialDescriprion;
	}

	public CarteInfo getCarteInfo() {
		return carteInfo;
	}

	public void setCarteInfo(CarteInfo carteInfo) {
		this.carteInfo = carteInfo;
	}

}
