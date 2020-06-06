package com.qfedu.market.service;

import com.qfedu.market.entity.GoodType;
import java.util.List;

/**
 * (GoodType)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface GoodTypeService {

    /**
     * 通过ID查询单条数据
     *
     * @param gtid 主键
     * @return 实例对象
     */
    GoodType queryById(Integer gtid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<GoodType> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param goodType 实例对象
     * @return 实例对象
     */
    GoodType insert(GoodType goodType);

    /**
     * 修改数据
     *
     * @param goodType 实例对象
     * @return 实例对象
     */
    GoodType update(GoodType goodType);

    /**
     * 通过主键删除数据
     *
     * @param gtid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer gtid);

}