package com.qfedu.market.dto;/*
 * author:lg
 * date:2020/3/27
 */

import lombok.Data;

@Data
public class CartItemDto {
    private Integer cid;
    private String fdid;
    private String goodsName;
    private String goodsType;
    private String img;
    private Double price;
    private Integer discount;
    private Integer count;
}
