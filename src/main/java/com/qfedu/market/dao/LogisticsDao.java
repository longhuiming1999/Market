package com.qfedu.market.dao;

import com.qfedu.market.entity.Logistics;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Logistics)表数据库访问层
 *
 * @author makejava
 * @since 2020-04-04 18:18:33
 */
public interface LogisticsDao {

    /**
     * 通过ID查询单条数据
     *
     * @param lid 主键
     * @return 实例对象
     */
    Logistics queryById(Integer lid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Logistics> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param logistics 实例对象
     * @return 对象列表
     */
    List<Logistics> queryAll(Logistics logistics);

    /**
     * 新增数据
     *
     * @param logistics 实例对象
     * @return 影响行数
     */
    int insert(Logistics logistics);

    /**
     * 修改数据
     *
     * @param logistics 实例对象
     * @return 影响行数
     */
    int update(Logistics logistics);

    /**
     * 通过主键删除数据
     *
     * @param lid 主键
     * @return 影响行数
     */
    int deleteById(Integer lid);

}