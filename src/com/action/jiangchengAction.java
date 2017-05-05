package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TJiangchengDAO;
import com.dao.TYuangongDAO;
import com.model.TJiangcheng;
import com.model.TYuangong;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class jiangchengAction extends ActionSupport
{
	private Integer id;
    private Integer yuangongId;
    private String riqi;
    private String shuxing;
    
    private String biaoti;
    private Integer jine;
	
	private TJiangchengDAO jiangchengDAO;
	private TYuangongDAO yuangongDAO;
	
	
	
	public String jiangchengAdd()
	{
		TJiangcheng jiangcheng=new TJiangcheng();
		
		//Jiangcheng.setId(id);
		jiangcheng.setYuangongId(yuangongId);
		jiangcheng.setRiqi(riqi);
		jiangcheng.setShuxing(shuxing);
		
		jiangcheng.setBiaoti(biaoti);
		jiangcheng.setJine(jine);
		
		jiangchengDAO.save(jiangcheng);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加完毕");
		return "msg";
	}
	
	
	
	public String jiangchengMana()
	{
		String sql="from TJiangcheng";
		List jiangchengList=jiangchengDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<jiangchengList.size();i++)
		{
			TJiangcheng jiangcheng=(TJiangcheng)jiangchengList.get(i);
			jiangcheng.setYuangong(yuangongDAO.findById(jiangcheng.getYuangongId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jiangchengList", jiangchengList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String jiangchengDel()
	{
		TJiangcheng jiangcheng=jiangchengDAO.findById(id);
		jiangchengDAO.getHibernateTemplate().delete(jiangcheng);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "信息添加完毕");
		return "msg";
	}
	
	

	
	
	public String jiangchengMine()
	{
		Map session=ActionContext.getContext().getSession();
		TYuangong yuangong=(TYuangong)session.get("yuangong");
		
		String sql="from TJiangcheng where yuangongId="+yuangong.getYuangongId();
		List jiangchengList=jiangchengDAO.getHibernateTemplate().find(sql);
		for(int i=0;i<jiangchengList.size();i++)
		{
			TJiangcheng jiangcheng=(TJiangcheng)jiangchengList.get(i);
			jiangcheng.setYuangong(yuangongDAO.findById(jiangcheng.getYuangongId()));
		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("jiangchengList", jiangchengList);
		return ActionSupport.SUCCESS;
	}



	public Integer getId()
	{
		return id;
	}



	public void setId(Integer id)
	{
		this.id = id;
	}



	public Integer getYuangongId()
	{
		return yuangongId;
	}



	public void setYuangongId(Integer yuangongId)
	{
		this.yuangongId = yuangongId;
	}



	public String getRiqi()
	{
		return riqi;
	}



	public void setRiqi(String riqi)
	{
		this.riqi = riqi;
	}



	public String getShuxing()
	{
		return shuxing;
	}



	public void setShuxing(String shuxing)
	{
		this.shuxing = shuxing;
	}





	public String getBiaoti()
	{
		return biaoti;
	}



	public void setBiaoti(String biaoti)
	{
		this.biaoti = biaoti;
	}



	public Integer getJine()
	{
		return jine;
	}



	public void setJine(Integer jine)
	{
		this.jine = jine;
	}



	public TJiangchengDAO getJiangchengDAO()
	{
		return jiangchengDAO;
	}



	public void setJiangchengDAO(TJiangchengDAO jiangchengDAO)
	{
		this.jiangchengDAO = jiangchengDAO;
	}



	public TYuangongDAO getYuangongDAO()
	{
		return yuangongDAO;
	}



	public void setYuangongDAO(TYuangongDAO yuangongDAO)
	{
		this.yuangongDAO = yuangongDAO;
	}

}
