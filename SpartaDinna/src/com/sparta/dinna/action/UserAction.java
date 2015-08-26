package com.sparta.dinna.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.sparta.dinna.entity.User;
import com.sparta.dinna.service.UserService;
import org.slave4j.orm.PageData;
import org.slave4j.utils.WebUtils;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/dinna/user")
public class UserAction
{
	@Resource
	private UserService userService;

	@RequestMapping("/list")
	public ModelMap list(HttpServletRequest request)
	{
		PageData<User> pageData = new PageData<User>();
		//给pageData设置参数
		WebUtils.setPageDataParameter(request, pageData);
		pageData = userService.find(pageData);

		return new ModelMap(pageData);
	}

	@RequestMapping(value = "/new")
	public String addForm(Model model)
	{
		return "/dinna/user/input";
	}

	@RequestMapping(value = "/edit/{id}")
	public String editForm(@PathVariable("id") Integer id, Model model)
	{
		User user = userService.find(id);
		model.addAttribute(user);
		return "/dinna/user/input";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(User user)
	{
		if (user.isNew())
		{
			userService.save(user);
		} else
		{
			userService.update(user);
		}

		return "redirect:/dinna/user/list";//重定向
	}

	@RequestMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Integer id)
	{
		userService.delete(id);
		return "redirect:/dinna/user/list";//重定向
	}

	@RequestMapping(value = "/visible/{id}")
	public String visible(@PathVariable("id") Integer id)
	{
		userService.visible(id);
		return "redirect:/dinna/user/list";//重定向
	}

	@RequestMapping(value = "/unVisible/{id}")
	public String unVisible(@PathVariable("id") Integer id)
	{
		userService.unVisible(id);
		return "redirect:/dinna/user/list";//重定向
	}

	@InitBinder
	public void InitBinder(WebDataBinder dataBinder)
	{
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}

}
