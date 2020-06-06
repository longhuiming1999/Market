package com.qfedu.market.entity;

import java.util.Date;
import java.io.Serializable;

/**
 * (Evaluation)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public class Evaluation implements Serializable {
    private static final long serialVersionUID = -93998351059775991L;
    
    private Integer eid;
    
    private String userId;
    
    private String fdid;
    
    private String detial;
    
    private Integer grade;
    
    private Date evaDate;


    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        this.eid = eid;
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

    public String getDetial() {
        return detial;
    }

    public void setDetial(String detial) {
        this.detial = detial;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Date getEvaDate() {
        return evaDate;
    }

    public void setEvaDate(Date evaDate) {
        this.evaDate = evaDate;
    }

}