package com.sparta.dinna.entity.user;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description:服务员实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 下午4:09:03<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
@DiscriminatorValue("服务员")
public class Waiter extends Person {

}
