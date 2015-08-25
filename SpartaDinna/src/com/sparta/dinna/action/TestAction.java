package com.sparta.dinna.action;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.opensymphony.xwork2.ActionSupport;
import com.sparta.dinna.entity.Floor;

public class TestAction extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1L;
	@Autowired
	private SessionFactory sessionFactory;
	@Resource(name = "floor")
	private Floor floor;
	private HttpServletRequest request;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ServletContext sc = request.getServletContext();
		WebApplicationContext ctx = WebApplicationContextUtils
				.getWebApplicationContext(sc);
		System.out.println(java.util.Arrays.toString(ctx
				.getBeanDefinitionNames()));
		if (sessionFactory == null) {
			System.out.println("sessionFactory空");
		}
		if (floor == null) {
			System.out.println("floor空");
		}
		floor.setFloorName("福满楼");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(floor);
		session.getTransaction().commit();
		session.close();
		System.out.println("进来了，成功保存");
		return SUCCESS;
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Floor getFloor() {
		return floor;
	}

	public void setFloor(Floor floor) {
		this.floor = floor;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		// TODO Auto-generated method stub
		request = arg0;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

}
