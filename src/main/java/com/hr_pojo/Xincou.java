package com.hr_pojo;

import com.my_pojo.Page;

import java.util.Date;

public class Xincou extends Page {
	
    private Integer id;

    private Integer userid;

    private Float jiben;

    private Float reward;

    private Float price;

    private String date;
    private userAdmin useradmin;
    
    private Float uPrice;
    private String type;
    
    public Float getuPrice() {
		return uPrice;
	}

	public void setuPrice(Float uPrice) {
		this.uPrice = uPrice;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	private Checks checks;
    
    private KaoQing kaoqing;
    
    
    
    
    public KaoQing getKaoqing() {
		return kaoqing;
	}

	public void setKaoqing(KaoQing kaoqing) {
		this.kaoqing = kaoqing;
	}

	public Checks getChecks() {
		return checks;
	}

	public void setChecks(Checks checks) {
		this.checks = checks;
	}

    
    
    public userAdmin getUseradmin() {
		return useradmin;
	}

	public void setUseradmin(userAdmin useradmin) {
		this.useradmin = useradmin;
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

    public Float getJiben() {
        return jiben;
    }

    public void setJiben(Float jiben) {
        this.jiben = jiben;
    }

    public Float getReward() {
        return reward;
    }

    public void setReward(Float reward) {
        this.reward = reward;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

   
}