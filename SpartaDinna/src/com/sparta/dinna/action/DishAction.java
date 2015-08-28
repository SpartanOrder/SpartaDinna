package com.sparta.dinna.action;

import org.springframework.stereotype.Controller;

import com.sparta.dinna.entity.Dish;

@Controller
public class DishAction extends BaseAction<Dish> {
	public DishAction() {
		super();
	}

	public String save() {
		System.out.println("进来了DishAction");
		System.out.println(model);
		System.out.println("ok");
		return SUCCESS;
	}

}
