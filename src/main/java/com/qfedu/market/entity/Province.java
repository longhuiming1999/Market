package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (Province)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public class Province implements Serializable {
    private static final long serialVersionUID = -60373410865894993L;
    
    private Integer pid;
    
    private String pname;


    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

}