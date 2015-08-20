package com.sparta.dinna.entity.user;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description:服务人员实体类<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 下午4:14:58<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@Table
@DiscriminatorColumn(name = "personType", discriminatorType = DiscriminatorType.STRING)
@DiscriminatorValue("工作人员")
public class ServerPerson extends Person {

}
