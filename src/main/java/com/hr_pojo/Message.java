package com.hr_pojo;

import java.util.Date;

public class Message extends M_Page{
    
	@Override
	public String toString() {
		return "Message [id=" + id + ", sex=" + sex + ", date=" + date + ", tel=" + tel + ", emil=" + emil + ", bumen="
				+ bumen + ", zhiwu=" + zhiwu + ", ruzhidate=" + ruzhidate + ", userid=" + userid + ", name=" + name
				+ ", shen=" + shen + ", bid=" + bid + ", dangan=" + dangan + ", b_name=" + b_name + ", status=" + status
				+ ", orderByColName=" + orderByColName + ", orderMethod=" + orderMethod + "]";
	}

	private Integer id;

    private String sex;

    private String date;

    private String tel;

    private String emil;

    private String bumen;

    private String zhiwu;

    private String ruzhidate;

    private Integer userid;

    private String name;
    
    private String shen;
    
    private Integer bid;
    
    private Dangan dangan;
    
    private String b_name;
    
    private String status;
    
    private String danganjiguan;
    
    private String danganminzu;
    
    private String danganpolitical;
    
    private String danganxueli;
    
    private String danganschool;
    
    private String danganhomeaddress;
    
    private String danganprofession;
    
    private String danganneirong;
    
    private String danganbeizhu;
    
    private Integer danganid;
    
    private Integer hetongid;
    
    private Integer hid;
    
    
	public Integer getHid() {
		return hid;
	}

	public void setH_id(Integer hid) {
		this.hid = hid;
	}

	public Integer getDanganid() {
		return danganid;
	}

	public void setDanganid(Integer danganid) {
		this.danganid = danganid;
	}

	public Integer getHetongid() {
		return hetongid;
	}

	public void setHetongid(Integer hetongid) {
		this.hetongid = hetongid;
	}

	public String getDanganneirong() {
		return danganneirong;
	}

	public void setDanganneirong(String danganneirong) {
		this.danganneirong = danganneirong;
	}

	public String getDanganbeizhu() {
		return danganbeizhu;
	}

	public void setDanganbeizhu(String danganbeizhu) {
		this.danganbeizhu = danganbeizhu;
	}

	public String getDanganprofession() {
		return danganprofession;
	}

	public void setDanganprofession(String danganprofession) {
		this.danganprofession = danganprofession;
	}

	public String getDanganjiguan() {
		return danganjiguan;
	}

	public void setDanganjiguan(String danganjiguan) {
		this.danganjiguan = danganjiguan;
	}

	public String getDanganminzu() {
		return danganminzu;
	}

	public void setDanganminzu(String danganminzu) {
		this.danganminzu = danganminzu;
	}

	public String getDanganpolitical() {
		return danganpolitical;
	}

	public void setDanganpolitical(String danganpolitical) {
		this.danganpolitical = danganpolitical;
	}

	public String getDanganxueli() {
		return danganxueli;
	}

	public void setDanganxueli(String danganxueli) {
		this.danganxueli = danganxueli;
	}

	public String getDanganschool() {
		return danganschool;
	}

	public void setDanganschool(String danganschool) {
		this.danganschool = danganschool;
	}

	public String getDanganhomeaddress() {
		return danganhomeaddress;
	}

	public void setDanganhomeaddress(String danganhomeaddress) {
		this.danganhomeaddress = danganhomeaddress;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Dangan getDangan() {
		return dangan;
	}

	public void setDangan(Dangan dangan) {
		this.dangan = dangan;
	}

	public Integer getBid() {
		return bid;
	}

	public void setBid(Integer bid) {
		this.bid = bid;
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

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getEmil() {
        return emil;
    }

    public void setEmil(String emil) {
        this.emil = emil;
    }

    public String getBumen() {
        return bumen;
    }

    public void setBumen(String bumen) {
        this.bumen = bumen;
    }

    public String getZhiwu() {
        return zhiwu;
    }

    public void setZhiwu(String zhiwu) {
        this.zhiwu = zhiwu;
    }

    public String getRuzhidate() {
        return ruzhidate;
    }

    public void setRuzhidate(String ruzhidate) {
        this.ruzhidate = ruzhidate;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}