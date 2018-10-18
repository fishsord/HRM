package com.hr_pojo;

import java.util.Date;

public class Hetong extends M_Page{
	
    private Integer id;

    private Integer userid;

    private String startdate;

    private String enddate;

    private Integer zhiwu;

    private String hetongnei;

    private String name;
    
    private String shen;
    
    private Integer mid;
    
    private Integer bid;  
    
    private String orderByColName;
    
    private String orderMethod;
    
    public String getOrderByColName() {
		return orderByColName;
	}

	public void setOrderByColName(String orderByColName) {
		this.orderByColName = orderByColName;
	}

	public String getOrderMethod() {
		return orderMethod;
	}

	public void setOrderMethod(String orderMethod) {
		this.orderMethod = orderMethod;
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
	}

	public Integer getMid() {
		return mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getShen() {
		return shen;
	}

	public void setShen(String shen) {
		this.shen = shen;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate;
    }

    public Integer getZhiwu() {
        return zhiwu;
    }

    public void setZhiwu(Integer zhiwu) {
        this.zhiwu = zhiwu;
    }

    public String getHetongnei() {
        return hetongnei;
    }

    public void setHetongnei(String hetongnei) {
        this.hetongnei = hetongnei;
    }
}