package com.hr_pojo;

public class User {
    private Integer id;

    private String username;

    private String password;

    private Integer useradminid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getUseradminid() {
        return useradminid;
    }

    public void setUseradminid(Integer useradminid) {
        this.useradminid = useradminid;
    }
}