package com.qfedu.market.dao;

import com.qfedu.market.entity.RolePerm;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (RolePerm)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface RolePermDao {

    /**
     * 通过ID查询单条数据
     *
     * @param rid 主键
     * @return 实例对象
     */
    RolePerm queryById(Integer rid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<RolePerm> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param rolePerm 实例对象
     * @return 对象列表
     */
    List<RolePerm> queryAll(RolePerm rolePerm);

    /**
     * 新增数据
     *
     * @param rolePerm 实例对象
     * @return 影响行数
     */
    int insert(RolePerm rolePerm);

    /**
     * 修改数据
     *
     * @param rolePerm 实例对象
     * @return 影响行数
     */
    int update(RolePerm rolePerm);

    /**
     * 通过主键删除数据
     *
     * @param rid 主键
     * @return 影响行数
     */
    int deleteById(Integer rid);

}