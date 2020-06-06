package com.qfedu.market.service;

import com.qfedu.market.entity.EmpRole;
import java.util.List;

/**
 * (EmpRole)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public interface EmpRoleService {

    /**
     * 通过ID查询单条数据
     *
     * @param eid 主键
     * @return 实例对象
     */
    EmpRole queryById(Integer eid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<EmpRole> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param empRole 实例对象
     * @return 实例对象
     */
    EmpRole insert(EmpRole empRole);

    /**
     * 修改数据
     *
     * @param empRole 实例对象
     * @return 实例对象
     */
    EmpRole update(EmpRole empRole);

    /**
     * 通过主键删除数据
     *
     * @param eid 主键
     * @return 是否成功
     */
    boolean deleteById(Integer eid);

}