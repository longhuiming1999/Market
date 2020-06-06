package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (EmpRole)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public class EmpRole implements Serializable {
    private static final long serialVersionUID = -30930867186755356L;
    
    private Integer eid;
    
    private Integer rid;


    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

}