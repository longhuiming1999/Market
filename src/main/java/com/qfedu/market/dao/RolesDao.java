package com.qfedu.market.dao;

import com.qfedu.market.entity.Roles;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Roles)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface RolesDao {

    /**
     * 通过ID查询单条数据
     *
     * @param rid 主键
     * @return 实例对象
     */
    Roles queryById(Integer rid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Roles> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param roles 实例对象
     * @return 对象列表
     */
    List<Roles> queryAll(Roles roles);

    /**
     * 新增数据
     *
     * @param roles 实例对象
     * @return 影响行数
     */
    int insert(Roles roles);

    /**
     * 修改数据
     *
     * @param roles 实例对象
     * @return 影响行数
     */
    int update(Roles roles);

    /**
     * 通过主键删除数据
     *
     * @param rid 主键
     * @return 影响行数
     */
    int deleteById(Integer rid);

}