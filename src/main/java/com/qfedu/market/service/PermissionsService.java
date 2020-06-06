package com.qfedu.market.service;

import com.qfedu.market.entity.Permissions;
import java.util.List;

/**
 * (Permissions)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface PermissionsService {

    /**
     * 通过ID查询单条数据
     *
     * @param pid 主键
     * @return 实例对象
     */
    Permissions queryById(Integer pid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Permissions> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param permissions 实例对象
     * @return 实例对象
     */
    Permissions insert(Permissions permissions);

    /**
     * 修改数据
     *
     * @param permissions 实例对象
     * @return 实例对象
     */
    Permissions update(Permissions permissions);

    /**
     * 通过主键删除数据
     *
     * @param pid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer pid);

}