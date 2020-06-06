package com.qfedu.market.service;

import com.qfedu.market.entity.OrderDetial;
import java.util.List;

/**
 * (OrderDetial)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface OrderDetialService {

    /**
     * 通过ID查询单条数据
     *
     * @param did 主键
     * @return 实例对象
     */
    OrderDetial queryById(Integer did);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<OrderDetial> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param orderDetial 实例对象
     * @return 实例对象
     */
    OrderDetial insert(OrderDetial orderDetial);

    /**
     * 修改数据
     *
     * @param orderDetial 实例对象
     * @return 实例对象
     */
    OrderDetial update(OrderDetial orderDetial);

    /**
     * 通过主键删除数据
     *
     * @param did 主键
     * @return 是否成功
     */
    boolean deleteById(Integer did);

}