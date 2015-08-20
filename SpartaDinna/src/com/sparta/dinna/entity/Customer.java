package com.sparta.dinna.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Description:顾客实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 上午11:24:35<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer customerId;// 顾客ID
	@Column(nullable = false)
	private String customerName;// 顾客姓名
	@Column(unique = true)
	private String customerIDcard;// 顾客身份证
	@Column(unique = true, nullable = false)
	private String customerTel;// 顾客电话

	public Customer() {
		// TODO Auto-generated constructor stub
	}

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerIDcard() {
		return customerIDcard;
	}

	public void setCustomerIDcard(String customerIDcard) {
		this.customerIDcard = customerIDcard;
	}

	public String getCustomerTel() {
		return customerTel;
	}

	public void setCustomerTel(String customerTel) {
		this.customerTel = customerTel;
	}
}
