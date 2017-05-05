package com.model;

import java.util.HashSet;
import java.util.Set;



public class TOrganization implements java.io.Serializable
{

	private Integer orgId;
	private String orgName;
	private TOrganization parenOrganization;
	
	private Set childOrganization = new HashSet(0);

	public Integer getOrgId()
	{
		return orgId;
	}

	public void setOrgId(Integer orgId)
	{
		this.orgId = orgId;
	}

	public String getOrgName()
	{
		return orgName;
	}

	public void setOrgName(String orgName)
	{
		this.orgName = orgName;
	}


	public TOrganization getParenOrganization()
	{
		return parenOrganization;
	}

	public void setParenOrganization(TOrganization parenOrganization)
	{
		this.parenOrganization = parenOrganization;
	}

	public Set getChildOrganization()
	{
		return childOrganization;
	}

	public void setChildOrganization(Set childOrganization)
	{
		this.childOrganization = childOrganization;
	}


}