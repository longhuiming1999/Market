package com.qfedu.market.dao;

import com.qfedu.market.entity.Cart;
import org.apache.ibatis.annotations.Param;
import java.util.List;

/**
 * (Cart)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public interface CartDao {

    List<Cart> queryByUserId(String uid);

    /**
     * 通过ID查询单条数据
     *
     * @param cid 主键
     * @return 实例对象
     */
    Cart queryById(Integer cid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<Cart> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param cart 实例对象
     * @return 对象列表
     */
    List<Cart> queryAll(Cart cart);

    /**
     * 新增数据
     *
     * @param cart 实例对象
     * @return 影响行数
     */
    int insert(Cart cart);

    /**
     * 修改数据
     *
     * @param cart 实例对象
     * @return 影响行数
     */
    int update(Cart cart);

    /**
     * 通过主键删除数据
     *
     * @param cid 主键
     * @return 影响行数
     */
    int deleteById(Integer cid);

    int deleteByFdid(String fdid);

}