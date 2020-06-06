package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (Cart)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public class Cart implements Serializable {
    private static final long serialVersionUID = -32960262688554585L;
    
    private Integer cid;
    
    private String userId;
    
    private String fdid;
    
    private Integer count;


    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFdid() {
        return fdid;
    }

    public void setFdid(String fdid) {
        this.fdid = fdid;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

}