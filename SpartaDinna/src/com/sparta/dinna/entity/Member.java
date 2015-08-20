package com.sparta.dinna.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Description:会员实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 上午11:24:44<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
public class Member {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer memberId;// 会员ID
	@Column(nullable = false, unique = true)
	private Integer memberUserName;// 会员号
	@Column(nullable = false)
	private String memberName;// 会员姓名
	@Column(nullable = false, unique = true)
	private String memberTel;// 会员电话号码
	@Column(nullable = false)
	private String memberPass;// 会员密码
	@Column(nullable = false, unique = true)
	private String memberIDcard;// 会员身份证
	@Column(nullable = false, unique = true)
	private Boolean sex;// 会员性别

	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberTel() {
		return memberTel;
	}

	public void setMemberTel(String memberTel) {
		this.memberTel = memberTel;
	}

	public String getMemberPass() {
		return memberPass;
	}

	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}

	public String getMemberIDcard() {
		return memberIDcard;
	}

	public void setMemberIDcard(String memberIDcard) {
		this.memberIDcard = memberIDcard;
	}

	public Boolean getSex() {
		return sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public Integer getMemberUserName() {
		return memberUserName;
	}

	public void setMemberUserName(Integer memberUserName) {
		this.memberUserName = memberUserName;
	}

}
