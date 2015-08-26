package com.sparta.dinna.entity;

// Generated 2015-8-25 18:03:24 by Hibernate Tools 4.3.1

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Description:顾客实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月25日 下午9:42:26<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table(name = "customer", catalog = "spartadinna", uniqueConstraints = @UniqueConstraint(columnNames = "customerTel"))
public class Customer implements java.io.Serializable {
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "customerID", unique = true, nullable = false)
	private Integer customerId;
	@Column(name = "customerName", nullable = false, length = 30)
	private String customerName;
	@Column(name = "customerTel", unique = true, nullable = false, length = 15)
	private String customerTel;
	@Column(name = "customerGender")
	private Byte customerGender;
	@Column(name = "delFlag")
	private Byte delFlag;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "lastSubTime", length = 19)
	private Date lastSubTime;
	@Column(name = "subBy")
	private Integer subBy;

	public Customer() {
	}

	public Customer(String customerName, String customerTel) {
		this.customerName = customerName;
		this.customerTel = customerTel;
	}

	public Customer(String customerName, String customerTel,
			Byte customerGender, Byte delFlag, Date lastSubTime, Integer subBy) {
		this.customerName = customerName;
		this.customerTel = customerTel;
		this.customerGender = customerGender;
		this.delFlag = delFlag;
		this.lastSubTime = lastSubTime;
		this.subBy = subBy;
	}

	public Integer getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return this.customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerTel() {
		return this.customerTel;
	}

	public void setCustomerTel(String customerTel) {
		this.customerTel = customerTel;
	}

	public Byte getCustomerGender() {
		return this.customerGender;
	}

	public void setCustomerGender(Byte customerGender) {
		this.customerGender = customerGender;
	}

	public Byte getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(Byte delFlag) {
		this.delFlag = delFlag;
	}

	public Date getLastSubTime() {
		return this.lastSubTime;
	}

	public void setLastSubTime(Date lastSubTime) {
		this.lastSubTime = lastSubTime;
	}

	public Integer getSubBy() {
		return this.subBy;
	}

	public void setSubBy(Integer subBy) {
		this.subBy = subBy;
	}

}
