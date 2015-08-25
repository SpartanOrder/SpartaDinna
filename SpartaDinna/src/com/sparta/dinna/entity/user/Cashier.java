package com.sparta.dinna.entity.user;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description:收银员实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 下午4:08:24<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
@DiscriminatorValue("收银员")
public class Cashier extends Person {

}
