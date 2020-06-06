package com.qfedu.market.entity;

import java.io.Serializable;

/**
 * (FreshGoods)实体类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public class FreshGoods implements Serializable {
    private static final long serialVersionUID = -97739309786609209L;
    
    private String fdid;
    
    private String goodName;
    
    private Integer gtid;
    
    private String img;
    
    private Object price;
    
    private Integer discount;
    
    private Integer preference;
    
    private Integer ifPromotion;
    
    private Integer lastSales;
    
    private Integer currentSales;
    
    private Integer countSales;
    
    private String summery;
    
    private String attr1;
    
    private String attr2;


    public String getFdid() {
        return fdid;
    }

    public void setFdid(String fdid) {
        this.fdid = fdid;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public Integer getGtid() {
        return gtid;
    }

    public void setGtid(Integer gtid) {
        this.gtid = gtid;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Object getPrice() {
        return price;
    }

    public void setPrice(Object price) {
        this.price = price;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }

    public Integer getPreference() {
        return preference;
    }

    public void setPreference(Integer preference) {
        this.preference = preference;
    }

    public Integer getIfPromotion() {
        return ifPromotion;
    }

    public void setIfPromotion(Integer ifPromotion) {
        this.ifPromotion = ifPromotion;
    }

    public Integer getLastSales() {
        return lastSales;
    }

    public void setLastSales(Integer lastSales) {
        this.lastSales = lastSales;
    }

    public Integer getCurrentSales() {
        return currentSales;
    }

    public void setCurrentSales(Integer currentSales) {
        this.currentSales = currentSales;
    }

    public Integer getCountSales() {
        return countSales;
    }

    public void setCountSales(Integer countSales) {
        this.countSales = countSales;
    }

    public String getSummery() {
        return summery;
    }

    public void setSummery(String summery) {
        this.summery = summery;
    }

    public String getAttr1() {
        return attr1;
    }

    public void setAttr1(String attr1) {
        this.attr1 = attr1;
    }

    public String getAttr2() {
        return attr2;
    }

    public void setAttr2(String attr2) {
        this.attr2 = attr2;
    }

    @Override
    public String toString() {
        return "FreshGoods{" +
                "fdid='" + fdid + '\'' +
                ", goodName='" + goodName + '\'' +
                ", gtid=" + gtid +
                ", img='" + img + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", preference=" + preference +
                ", ifPromotion=" + ifPromotion +
                ", lastSales=" + lastSales +
                ", currentSales=" + currentSales +
                ", countSales=" + countSales +
                ", summery='" + summery + '\'' +
                ", attr1='" + attr1 + '\'' +
                ", attr2='" + attr2 + '\'' +
                '}';
    }
}