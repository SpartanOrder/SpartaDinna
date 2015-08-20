package com.sparta.dinna.entity.user;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Description:超级管理员<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月17日 下午4:27:10<br>
 * @author Wind
 * @version 1.0
 */
@Entity
@DiscriminatorValue("超级管理员")
@Table
public class Adminstrator extends ManagerPerson {

}
