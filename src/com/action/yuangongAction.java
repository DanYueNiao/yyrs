package com.action;

import java.util.List;
import java.util.Map;


import com.dao.TOrganizationDAO;
import com.dao.TYuangongDAO;
import com.model.TYuangong;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class yuangongAction extends ActionSupport
{
	private Integer yuangongId;
	private int yuangongOrgId;
	private String yuangongName;
	private String yuangongSex;

	private int yuangongAge;
	private String yuangongXueli;
	private String yuangongZhiwei;
	private String yuangongAddress;

	private String yuangongTel;
	private String yuangongEmail;
	private String yuangongGonghao;
	private String yuangongMima;
	
	private String yuangongDel;
	
	private TYuangongDAO yuangongDAO;
	private TOrganizationDAO organizationDAO;
	
	
	public String yuangongAdd()
	{
		TYuangong yuangong=new TYuangong();
		
		//yuangong.setYuangongId(yuangongId);
		yuangong.setYuangongOrgId(yuangongOrgId);
		yuangong.setYuangongName(yuangongName);
		yuangong.setYuangongSex(yuangongSex);
		
		yuangong.setYuangongAge(yuangongAge);
		yuangong.setYuangongXueli(yuangongXueli);
		yuangong.setYuangongZhiwei(yuangongZhiwei);
		yuangong.setYuangongAddress(yuangongAddress);
		
		yuangong.setYuangongTel(yuangongTel);
		yuangong.setYuangongEmail(yuangongEmail);
		yuangong.setYuangongGonghao(yuangongGonghao);
		yuangong.setYuangongMima(yuangongMima);
		
		yuangong.setYuangongDel("no");
		
		yuangongDAO.save(yuangong);
		
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("msg", "信息添加成功");
		return "msg";
	}
	
	
	public String yuangongMana()
	{
		String sql="from TYuangong where yuangongDel='no'";
		List yuangongList=yuangongDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<yuangongList.size();i++)
		{
			TYuangong yuangong=(TYuangong)yuangongList.get(i);
		    yuangong.setOrganization(organizationDAO.findById(yuangong.getYuangongOrgId()));
		}
		
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("yuangongList", yuangongList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String yuangongDel()
	{
		TYuangong yuangong=yuangongDAO.findById(yuangongId);
		yuangong.setYuangongDel("yes");
		
		yuangongDAO.attachDirty(yuangong);
		
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("msg", "信息删除成功");
		return "msg";
	}
	
	
	

	public Integer getYuangongId()
	{
		return yuangongId;
	}


	public void setYuangongId(Integer yuangongId)
	{
		this.yuangongId = yuangongId;
	}


	public int getYuangongOrgId()
	{
		return yuangongOrgId;
	}


	public void setYuangongOrgId(int yuangongOrgId)
	{
		this.yuangongOrgId = yuangongOrgId;
	}


	public String getYuangongDel()
	{
		return yuangongDel;
	}


	public String getYuangongGonghao()
	{
		return yuangongGonghao;
	}


	public void setYuangongGonghao(String yuangongGonghao)
	{
		this.yuangongGonghao = yuangongGonghao;
	}


	public String getYuangongMima()
	{
		return yuangongMima;
	}


	public void setYuangongMima(String yuangongMima)
	{
		this.yuangongMima = yuangongMima;
	}


	public void setYuangongDel(String yuangongDel)
	{
		this.yuangongDel = yuangongDel;
	}


	public String getYuangongName()
	{
		return yuangongName;
	}


	public void setYuangongName(String yuangongName)
	{
		this.yuangongName = yuangongName;
	}


	public String getYuangongSex()
	{
		return yuangongSex;
	}


	public void setYuangongSex(String yuangongSex)
	{
		this.yuangongSex = yuangongSex;
	}


	public int getYuangongAge()
	{
		return yuangongAge;
	}


	public void setYuangongAge(int yuangongAge)
	{
		this.yuangongAge = yuangongAge;
	}


	public String getYuangongXueli()
	{
		return yuangongXueli;
	}


	public void setYuangongXueli(String yuangongXueli)
	{
		this.yuangongXueli = yuangongXueli;
	}


	public String getYuangongZhiwei()
	{
		return yuangongZhiwei;
	}


	public void setYuangongZhiwei(String yuangongZhiwei)
	{
		this.yuangongZhiwei = yuangongZhiwei;
	}


	public String getYuangongAddress()
	{
		return yuangongAddress;
	}


	public void setYuangongAddress(String yuangongAddress)
	{
		this.yuangongAddress = yuangongAddress;
	}


	public String getYuangongTel()
	{
		return yuangongTel;
	}


	public void setYuangongTel(String yuangongTel)
	{
		this.yuangongTel = yuangongTel;
	}


	public String getYuangongEmail()
	{
		return yuangongEmail;
	}


	public void setYuangongEmail(String yuangongEmail)
	{
		this.yuangongEmail = yuangongEmail;
	}


	public TYuangongDAO getYuangongDAO()
	{
		return yuangongDAO;
	}


	public void setYuangongDAO(TYuangongDAO yuangongDAO)
	{
		this.yuangongDAO = yuangongDAO;
	}


	public TOrganizationDAO getOrganizationDAO()
	{
		return organizationDAO;
	}


	public void setOrganizationDAO(TOrganizationDAO organizationDAO)
	{
		this.organizationDAO = organizationDAO;
	}
	
}
