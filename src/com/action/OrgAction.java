package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;


import com.dao.TOrganizationDAO;
import com.dao.TYuangongDAO;
import com.model.TOrganization;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrgAction extends ActionSupport
{
	private TOrganizationDAO organizationDAO;
	private TYuangongDAO yuangongDAO;
	
	private Integer depId;
	private String orgName;
	
	

	public String orgMana() throws Exception
	{
		
		List orgList=organizationDAO.findAll();
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("orgList", orgList);
		return ActionSupport.SUCCESS;
	}
	
	
	//添加员工时
	public String orgAll() throws Exception
	{
		List orgList=organizationDAO.findAll();
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("orgList", orgList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String addOrg()
	{
		TOrganization organization=new TOrganization();
		organization.setOrgName(orgName);
		
		if(depId!=0)
		{
			organization.setParenOrganization(organizationDAO.findById(depId));
		}
		organizationDAO.save(organization);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	
	public String delOrg()
	{
		String s="";
		
		TOrganization organization=organizationDAO.findById(depId);
		
		if(organization.getChildOrganization().size()>0)
		{
			s="该部门下有子部门，请先删除子部门";
		}
		else
		{
			String sql="from TYuangong where yuangongDel='no' and yuangongOrgId="+organization.getOrgId();
			List list=yuangongDAO.getHibernateTemplate().find(sql);
			if(list.size()>0)
			{
				s="该部门下有员工信息，请先删除员工信息";
			}
			else
			{
				organizationDAO.delete(organization);
				s="信息删除成功";
			}
		}
		
		
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", s);
		return "msg";
	}

	public TOrganizationDAO getOrganizationDAO()
	{
		return organizationDAO;
	}

	public TYuangongDAO getYuangongDAO()
	{
		return yuangongDAO;
	}

	public void setYuangongDAO(TYuangongDAO yuangongDAO)
	{
		this.yuangongDAO = yuangongDAO;
	}

	public void setOrganizationDAO(TOrganizationDAO organizationDAO)
	{
		this.organizationDAO = organizationDAO;
	}

	public Integer getDepId()
	{
		return depId;
	}

	public void setDepId(Integer depId)
	{
		this.depId = depId;
	}

	public String getOrgName()
	{
		return orgName;
	}

	public void setOrgName(String orgName)
	{
		this.orgName = orgName;
	}
	
}
