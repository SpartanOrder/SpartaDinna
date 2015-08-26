package com.sparta.dinna.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.sparta.dinna.entity.TempCarteContent;
import com.sparta.dinna.service.TempendCarteContentService;
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
@RequestMapping("/dinna/tempendCarteContent")
public class TempendCarteContentAction
{
	@Resource
	private TempendCarteContentService tempendCarteContentService;

	@RequestMapping("/list")
	public ModelMap list(HttpServletRequest request)
	{
		PageData<TempCarteContent> pageData = new PageData<TempCarteContent>();
		//给pageData设置参数
		WebUtils.setPageDataParameter(request, pageData);
		pageData = tempendCarteContentService.find(pageData);

		return new ModelMap(pageData);
	}

	@RequestMapping(value = "/new")
	public String addForm(Model model)
	{
		return "/dinna/tempendCarteContent/input";
	}

	@RequestMapping(value = "/edit/{id}")
	public String editForm(@PathVariable("id") Integer id, Model model)
	{
		TempCarteContent tempendCarteContent = tempendCarteContentService.find(id);
		model.addAttribute(tempendCarteContent);
		return "/dinna/tempendCarteContent/input";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(TempCarteContent tempendCarteContent)
	{
		if (tempendCarteContent.isNew())
		{
			tempendCarteContentService.save(tempendCarteContent);
		} else
		{
			tempendCarteContentService.update(tempendCarteContent);
		}

		return "redirect:/dinna/tempendCarteContent/list";//重定向
	}

	@RequestMapping(value = "/delete/{id}")
	public String delete(@PathVariable("id") Integer id)
	{
		tempendCarteContentService.delete(id);
		return "redirect:/dinna/tempendCarteContent/list";//重定向
	}

	@RequestMapping(value = "/visible/{id}")
	public String visible(@PathVariable("id") Integer id)
	{
		tempendCarteContentService.visible(id);
		return "redirect:/dinna/tempendCarteContent/list";//重定向
	}

	@RequestMapping(value = "/unVisible/{id}")
	public String unVisible(@PathVariable("id") Integer id)
	{
		tempendCarteContentService.unVisible(id);
		return "redirect:/dinna/tempendCarteContent/list";//重定向
	}

	@InitBinder
	public void InitBinder(WebDataBinder dataBinder)
	{
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), false));
	}

}
