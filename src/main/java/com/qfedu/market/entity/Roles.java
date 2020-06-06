package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (Roles)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public class Roles implements Serializable {
    private static final long serialVersionUID = -96328303769178751L;
    
    private Integer rid;
    
    private String rname;
    
    private String detial;


    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    public String getDetial() {
        return detial;
    }

    public void setDetial(String detial) {
        this.detial = detial;
    }

}