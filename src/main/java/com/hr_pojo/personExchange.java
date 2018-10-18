package com.hr_pojo;

import java.util.Date;

public class personExchange {
    private Integer id;

    private Integer userid;

    private String userd;

    private String news;

    private String date;

    private String reasonr;
    
    private String username;

    private User user;
    
    private userAdmin useradmin;
    
    
    
    
    public userAdmin getUseradmin() {
		return useradmin;
	}

	public void setUseradmin(userAdmin useradmin) {
		this.useradmin = useradmin;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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

    public String getUserd() {
        return userd;
    }

    public void setUserd(String userd) {
        this.userd = userd;
    }

    public String getNews() {
        return news;
    }

    public void setNews(String news) {
        this.news = news;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getReasonr() {
        return reasonr;
    }

    public void setReasonr(String reasonr) {
        this.reasonr = reasonr;
    }
}