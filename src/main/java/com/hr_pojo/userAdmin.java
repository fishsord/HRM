package com.hr_pojo;

public class userAdmin {
    private Integer uId;

    private String uShen;

    private Float uPrice;

    private Integer uEid;
    
    private User user;

    public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuShen() {
        return uShen;
    }

    public void setuShen(String uShen) {
        this.uShen = uShen;
    }

    public Float getuPrice() {
        return uPrice;
    }

    public void setuPrice(Float uPrice) {
        this.uPrice = uPrice;
    }

    public Integer getuEid() {
        return uEid;
    }

    public void setuEid(Integer uEid) {
        this.uEid = uEid;
    }
}