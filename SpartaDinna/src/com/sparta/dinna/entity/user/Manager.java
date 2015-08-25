package com.sparta.dinna.entity.user;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description:经理实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTim: 2015年8月17日 下午4:29:09<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@DiscriminatorValue("经理")
@Table
public class Manager extends Person {

}
