package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (Township)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public class Township implements Serializable {
    private static final long serialVersionUID = 991171069050735686L;
    
    private Integer tid;
    
    private String tname;
    
    private Integer cid;


    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

}