package com.sparta.dinna.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.sparta.dinna.entity.DinningTable;
import com.sparta.dinna.service.DinningTableService;
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
@RequestMapping("/dinna/dinningTable")
public class DinningTableAction
{
	@Resource
	private DinningTableService dinningTableService;

	@RequestMapping("/list")
	public ModelMap list(HttpServletRequest request)
	{
		PageData<DinningTable> pageData = new PageData<DinningTable>();
		//给pageData设置参数
		WebUtils.setPageDataParameter(request, pageData);
		pageData = dinningTableService.find(pageData);

		return new ModelMap(pageData);
	}

	@RequestMapping(value = "/new")
	public String addForm(Model model)
	{
		return "/dinna/dinningTable/input";
	}

	@RequestMapping(value = "/edit/{id}")
	public String editForm(@PathVariable("id") Integer id, Model model)
	{
		DinningTable dinningTable = dinningTableService.find(id);
		model.addAttribute(dinningTable);
		return "/dinna/dinningTable/input";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(DinningTable dinningTable)
	{
		if (dinningTable.isNew())
		{
			dinningTableService.save(dinningTable);
		} else
		{
			dinningTableService.update(dinningTable);
		}

		return "redirect:/dinna/dinningTable/list";//重定向
	}

	@RequestMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Integer id)
	{
		dinningTableService.delete(id);
		return "redirect:/dinna/dinningTable/list";//重定向
	}

	@RequestMapping(value = "/visible/{id}")
	public String visible(@PathVariable("id") Integer id)
	{
		dinningTableService.visible(id);
		return "redirect:/dinna/dinningTable/list";//重定向
	}

	@RequestMapping(value = "/unVisible/{id}")
	public String unVisible(@PathVariable("id") Integer id)
	{
		dinningTableService.unVisible(id);
		return "redirect:/dinna/dinningTable/list";//重定向
	}

	@InitBinder
	public void InitBinder(WebDataBinder dataBinder)
	{
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}

}
