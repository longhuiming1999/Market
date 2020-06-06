package com.qfedu.market.service;

import com.qfedu.market.entity.Courier;
import java.util.List;

/**
 * (Courier)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public interface CourierService {

    /**
     * 通过ID查询单条数据
     *
     * @param account 主键
     * @return 实例对象
     */
    Courier queryById(String account);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Courier> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param courier 实例对象
     * @return 实例对象
     */
    Courier insert(Courier courier);

    /**
     * 修改数据
     *
     * @param courier 实例对象
     * @return 实例对象
     */
    Courier update(Courier courier);

    /**
     * 通过主键删除数据
     *
     * @param account 主键
     * @return 是否成功
     */
    boolean deleteById(String account);

}