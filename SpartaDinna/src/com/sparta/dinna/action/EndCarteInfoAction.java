package com.sparta.dinna.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.sparta.dinna.entity.EndCarteInfo;
import com.sparta.dinna.service.EndCarteInfoService;
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
@RequestMapping("/dinna/endCarteInfo")
public class EndCarteInfoAction
{
	@Resource
	private EndCarteInfoService endCarteInfoService;

	@RequestMapping("/list")
	public ModelMap list(HttpServletRequest request)
	{
		PageData<EndCarteInfo> pageData = new PageData<EndCarteInfo>();
		//给pageData设置参数
		WebUtils.setPageDataParameter(request, pageData);
		pageData = endCarteInfoService.find(pageData);

		return new ModelMap(pageData);
	}

	@RequestMapping(value = "/new")
	public String addForm(Model model)
	{
		return "/dinna/endCarteInfo/input";
	}

	@RequestMapping(value = "/edit/{id}")
	public String editForm(@PathVariable("id") Integer id, Model model)
	{
		EndCarteInfo endCarteInfo = endCarteInfoService.find(id);
		model.addAttribute(endCarteInfo);
		return "/dinna/endCarteInfo/input";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(EndCarteInfo endCarteInfo)
	{
		if (endCarteInfo.isNew())
		{
			endCarteInfoService.save(endCarteInfo);
		} else
		{
			endCarteInfoService.update(endCarteInfo);
		}

		return "redirect:/dinna/endCarteInfo/list";//重定向
	}

	@RequestMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Integer id)
	{
		endCarteInfoService.delete(id);
		return "redirect:/dinna/endCarteInfo/list";//重定向
	}

	@RequestMapping(value = "/visible/{id}")
	public String visible(@PathVariable("id") Integer id)
	{
		endCarteInfoService.visible(id);
		return "redirect:/dinna/endCarteInfo/list";//重定向
	}

	@RequestMapping(value = "/unVisible/{id}")
	public String unVisible(@PathVariable("id") Integer id)
	{
		endCarteInfoService.unVisible(id);
		return "redirect:/dinna/endCarteInfo/list";//重定向
	}

	@InitBinder
	public void InitBinder(WebDataBinder dataBinder)
	{
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}

}
