package com.qfedu.market.entity;

import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (Logistics)实体类
 *
 * @author makejava
 * @since 2020-04-04 18:18:33
 */
@Data
public class Logistics implements Serializable {
    private static final long serialVersionUID = -78556016703070849L;
    
    private Integer lid;
    
    private String account;
    
    private String userId;
    
    private String oid;
    
    private Integer did;
    
    private Date payTime;
    
    private Date packageTime;
    
    private Date beginTime;
    
    private Date endTime;
    
    private Integer status;
    


}