/**
 * 
 */
package com.sparta.dinna.action;

import org.springframework.stereotype.Controller;

import com.sparta.dinna.entity.User;

/**
 * Description:<br>
 * ProgramName:SpartaDinna<br>
 * CreateTime: 2015年8月27日 上午8:44:35<br>
 * @author Wind
 * @version 1.0
 */
@Controller
public class UserAction extends BaseAction<User> {

	public UserAction() {
		super();
	}

	public String save() {
		System.out.println("进来了");
		System.out.println(model);
		userService.save(model);
		System.out.println("ok");
		return SUCCESS;
	}

}
