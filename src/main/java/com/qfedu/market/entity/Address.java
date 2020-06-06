package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (Address)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public class Address implements Serializable {
    private static final long serialVersionUID = 452124512547552554L;
    
    private Integer did;
    
    private String userId;
    
    private String province;
    
    private String city;
    
    private String township;
    
    private String detial;
    
    private Integer types;


    public Integer getDid() {
        return did;
    }

    public void setDid(Integer did) {
        this.did = did;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getTownship() {
        return township;
    }

    public void setTownship(String township) {
        this.township = township;
    }

    public String getDetial() {
        return detial;
    }

    public void setDetial(String detial) {
        this.detial = detial;
    }

    public Integer getTypes() {
        return types;
    }

    public void setTypes(Integer types) {
        this.types = types;
    }

    @Override
    public String toString() {
        return "Address{" +
                "did=" + did +
                ", userId='" + userId + '\'' +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", township='" + township + '\'' +
                ", detial='" + detial + '\'' +
                ", types=" + types +
                '}';
    }
}