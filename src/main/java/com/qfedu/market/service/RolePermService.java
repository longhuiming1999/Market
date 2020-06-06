package com.qfedu.market.service;

import com.qfedu.market.entity.RolePerm;
import java.util.List;

/**
 * (RolePerm)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface RolePermService {

    /**
     * 通过ID查询单条数据
     *
     * @param rid 主键
     * @return 实例对象
     */
    RolePerm queryById(Integer rid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<RolePerm> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param rolePerm 实例对象
     * @return 实例对象
     */
    RolePerm insert(RolePerm rolePerm);

    /**
     * 修改数据
     *
     * @param rolePerm 实例对象
     * @return 实例对象
     */
    RolePerm update(RolePerm rolePerm);

    /**
     * 通过主键删除数据
     *
     * @param rid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer rid);

}