package com.qfedu.market.dao;

import com.qfedu.market.entity.Courier;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Courier)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public interface CourierDao {

    /**
     * 通过ID查询单条数据
     *
     * @param account 主键
     * @return 实例对象
     */
    Courier queryById(String account);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Courier> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param courier 实例对象
     * @return 对象列表
     */
    List<Courier> queryAll(Courier courier);

    /**
     * 新增数据
     *
     * @param courier 实例对象
     * @return 影响行数
     */
    int insert(Courier courier);

    /**
     * 修改数据
     *
     * @param courier 实例对象
     * @return 影响行数
     */
    int update(Courier courier);

    /**
     * 通过主键删除数据
     *
     * @param account 主键
     * @return 影响行数
     */
    int deleteById(String account);

}