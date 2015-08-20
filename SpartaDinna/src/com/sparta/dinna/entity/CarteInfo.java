package com.sparta.dinna.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.sparta.dinna.entity.user.Cashier;
import com.sparta.dinna.entity.user.Waiter;

/**
 * Description:餐单信息实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 上午11:25:04<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
public class CarteInfo {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer carteId;// 餐单信息ID
	@Column(nullable = false, unique = true)
	private String CarteSwiftNumber;// 餐单流水号，自动生成
	@ManyToOne(targetEntity = DiningTable.class)
	@JoinColumn(name = "diningTableId", nullable = false, referencedColumnName = "tableId")
	private DiningTable diningTable;// 餐桌ID
	@ManyToOne(targetEntity = Waiter.class)
	@JoinColumn(name = "waiterId", nullable = false, referencedColumnName = "personId")
	private Waiter waiter;// 服务员ID
	@ManyToOne(targetEntity = Cashier.class)
	@JoinColumn(name = "cashierId", nullable = false, referencedColumnName = "personId")
	private Cashier chshier;// 收银员ID
	@ManyToOne(targetEntity = Customer.class)
	@JoinColumn(name = "customerId", nullable = false, referencedColumnName = "customerId")
	private Customer customer;// 顾客ID
	@ManyToOne(targetEntity = Member.class)
	@JoinColumn(name = "memberId", nullable = false, referencedColumnName = "memberId")
	private Member member;// 会员ID
	@OneToMany(targetEntity = CarteContent.class, mappedBy = "carteInfo")
	private List<CarteContent> carteList;// 餐单内容
	private Integer dishNums;// 菜肴数量
	private Integer amountPeople;// 就餐人数
	private String remark;// 餐单备注
	@Column(nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date repastTime;// 就餐时间
	@Column(nullable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date billTime;// 结帐时间
	@Column(nullable = false)
	private Double consumeAmount;// 消费金额
	private Double discount;// 折扣
	@Column(nullable = false)
	private Double paidAmount;// 实收金额

	public CarteInfo() {
		// TODO Auto-generated constructor stub
	}

	public Integer getCarteId() {
		return carteId;
	}

	public void setCarteId(Integer carteId) {
		this.carteId = carteId;
	}

	public String getCarteSwiftNumber() {
		return CarteSwiftNumber;
	}

	public void setCarteSwiftNumber(String carteSwiftNumber) {
		CarteSwiftNumber = carteSwiftNumber;
	}

	public DiningTable getdiningTable() {
		return diningTable;
	}

	public void setTable(DiningTable diningTable) {
		this.diningTable = diningTable;
	}

	public Waiter getWaiter() {
		return waiter;
	}

	public void setWaiter(Waiter waiter) {
		this.waiter = waiter;
	}

	public Cashier getChshier() {
		return chshier;
	}

	public void setChshier(Cashier chshier) {
		this.chshier = chshier;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public List<CarteContent> getCarteList() {
		return carteList;
	}

	public void setCarteList(List<CarteContent> carteList) {
		this.carteList = carteList;
	}

	public Integer getDishNums() {
		return dishNums;
	}

	public void setDishNums(Integer dishNums) {
		this.dishNums = dishNums;
	}

	public Integer getAmountPeople() {
		return amountPeople;
	}

	public void setAmountPeople(Integer amountPeople) {
		this.amountPeople = amountPeople;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getRepastTime() {
		return repastTime;
	}

	public void setRepastTime(Date repastTime) {
		this.repastTime = repastTime;
	}

	public Date getBillTime() {
		return billTime;
	}

	public void setBillTime(Date billTime) {
		this.billTime = billTime;
	}

	public Double getConsumeAmount() {
		return consumeAmount;
	}

	public void setConsumeAmount(Double consumeAmount) {
		this.consumeAmount = consumeAmount;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Double getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(Double paidAmount) {
		this.paidAmount = paidAmount;
	}

}
