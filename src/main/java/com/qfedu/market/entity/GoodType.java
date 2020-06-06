package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (GoodType)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public class GoodType implements Serializable {
    private static final long serialVersionUID = -68745489395651638L;
    
    private Integer gtid;
    
    private String gtname;


    public Integer getGtid() {
        return gtid;
    }

    public void setGtid(Integer gtid) {
        this.gtid = gtid;
    }

    public String getGtname() {
        return gtname;
    }

    public void setGtname(String gtname) {
        this.gtname = gtname;
    }

}