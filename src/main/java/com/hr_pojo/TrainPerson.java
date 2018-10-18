package com.hr_pojo;

import com.my_pojo.Page;

public class TrainPerson extends Page {
    private Integer id;

    private String name;

    private Integer trainid;

    private String istong;
    
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getTrainid() {
        return trainid;
    }

    public void setTrainid(Integer trainid) {
        this.trainid = trainid;
    }

    public String getIstong() {
        return istong;
    }

    public void setIstong(String istong) {
        this.istong = istong;
    }
}