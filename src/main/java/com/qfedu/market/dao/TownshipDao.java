package com.qfedu.market.dao;

import com.qfedu.market.entity.Township;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Township)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface TownshipDao {

    List<Township> queryByCid(@Param("cid") Integer cid);

    /**
     * 通过ID查询单条数据
     *
     * @param tid 主键
     * @return 实例对象
     */
    Township queryById(Integer tid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Township> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param township 实例对象
     * @return 对象列表
     */
    List<Township> queryAll(Township township);

    /**
     * 新增数据
     *
     * @param township 实例对象
     * @return 影响行数
     */
    int insert(Township township);

    /**
     * 修改数据
     *
     * @param township 实例对象
     * @return 影响行数
     */
    int update(Township township);

    /**
     * 通过主键删除数据
     *
     * @param tid 主键
     * @return 影响行数
     */
    int deleteById(Integer tid);

}