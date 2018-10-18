package com.hr_pojo;

import com.my_pojo.Page;

public class KaoQing extends Page{
    private Integer id;

    private Integer userid;

    private String type;
    private Float price;
    public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	//排序列名
    private String orderByColName;
    //排序方式
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}