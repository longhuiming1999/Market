package com.qfedu.market.entity;/*
 * author:lg
 * date:2020/4/3
 */

import java.util.List;

public class PageBean<T> {
    private Integer currentPage;
    private Integer pageSize;
    private Integer totalDataNum;
    private Integer totalPageNum;
    private List<T> dataList;

    @Override
    public String toString() {
        return "PageBean{" +
                "currentPage=" + currentPage +
                ", pageSize=" + pageSize +
                ", totalDataNum=" + totalDataNum +
                ", totalPageNum=" + totalPageNum +
                ", dataList=" + dataList +
                '}';
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalDataNum() {
        return totalDataNum;
    }

    public void setTotalDataNum(Integer totalDataNum) {
        this.totalDataNum = totalDataNum;
    }

    public Integer getTotalPageNum() {
        totalPageNum = this.totalDataNum % this.pageSize == 0 ? this.totalDataNum / this.pageSize : this.totalDataNum / this.pageSize + 1;
        return totalPageNum;
    }

    public void setTotalPageNum(Integer totalPageNum) {
        this.totalPageNum = totalPageNum;
    }

    public List<T> getDataList() {
        return dataList;
    }

    public void setDataList(List<T> dataList) {
        this.dataList = dataList;
    }
}
