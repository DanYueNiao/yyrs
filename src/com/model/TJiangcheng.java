package com.model;



/**
 * TJiangcheng entity. @author MyEclipse Persistence Tools
 */

public class TJiangcheng  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer yuangongId;
     private String riqi;
     private String shuxing;
     
     private String biaoti;
     private Integer jine;

     private TYuangong yuangong;
    // Constructors

    /** default constructor */
    public TJiangcheng() {
    }

    
    /** full constructor */
    public TJiangcheng(Integer yuangongId, String riqi, String shuxing, String biaoti, Integer jine) {
        this.yuangongId = yuangongId;
        this.riqi = riqi;
        this.shuxing = shuxing;
        this.biaoti = biaoti;
        this.jine = jine;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getYuangongId() {
        return this.yuangongId;
    }
    
    public void setYuangongId(Integer yuangongId) {
        this.yuangongId = yuangongId;
    }

    public String getRiqi() {
        return this.riqi;
    }
    
    public void setRiqi(String riqi) {
        this.riqi = riqi;
    }

    public TYuangong getYuangong()
	{
		return yuangong;
	}


	public void setYuangong(TYuangong yuangong)
	{
		this.yuangong = yuangong;
	}


	public String getShuxing() {
        return this.shuxing;
    }
    
    public void setShuxing(String shuxing) {
        this.shuxing = shuxing;
    }

    public String getBiaoti() {
        return this.biaoti;
    }
    
    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti;
    }

    public Integer getJine() {
        return this.jine;
    }
    
    public void setJine(Integer jine) {
        this.jine = jine;
    }
   








}