package com.qfedu.market.service;

import com.qfedu.market.entity.Province;
import java.util.List;

/**
 * (Province)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface ProvinceService {

    /**
     * 通过ID查询单条数据
     *
     * @param pid 主键
     * @return 实例对象
     */
    Province queryById(Integer pid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Province> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param province 实例对象
     * @return 实例对象
     */
    Province insert(Province province);

    /**
     * 修改数据
     *
     * @param province 实例对象
     * @return 实例对象
     */
    Province update(Province province);

    /**
     * 通过主键删除数据
     *
     * @param pid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer pid);

}