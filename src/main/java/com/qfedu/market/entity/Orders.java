package com.qfedu.market.entity;

import lombok.Data;

import java.util.Date;
import java.io.Serializable;

/**
 * (Orders)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Data
public class Orders implements Serializable {
    private static final long serialVersionUID = -26971703434788200L;
    
    private String oid;
    
    private String userId;
    
    private Date orderTime;
    
    private double totalPrice;
    
    private Integer orderStatus;
    
    private Integer payType;

}