/**
 * 
 */
package com.sparta.dinna.entity.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * Description:用户实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 上午11:27:59<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class Person {
	@Id
	// 由于不能使用identity主键生成策略，故此处采用hilo逐渐生成策略
	@GenericGenerator(name = "person_hilo", strategy = "hilo")
	@GeneratedValue(generator = "person_hilo")
	public String personId;// 用户ID
	@Column(unique = true)
	public String personName;// 用户名
	public String personPass;// 用户密码
	public String personRealName;// 用户真实姓名
	public Boolean sex;// 用户性别
	@Column(unique = true)
	public String identityCard;// 用户身份证
	@Column(unique = true)
	public String telphone;// 用户电话
	public String description;// 个人描述

	public Person() {
		// TODO Auto-generated constructor stub
	}

	public String getpersonId() {
		return this.personId;
	};

	public void setpersonId(String personId) {
		this.personId = personId;
	};

	public String getpersonName() {
		return personName;
	}

	public void setpersonName(String personName) {
		this.personName = personName;
	}

	public String getpersonPass() {
		return personPass;
	}

	public void setpersonPass(String personPass) {
		this.personPass = personPass;
	}

	public Boolean getSex() {
		return sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public String getpersonRealName() {
		return personRealName;
	}

	public void setpersonRealName(String personRealName) {
		this.personRealName = personRealName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
