package com.qfedu.market.dao;

import com.qfedu.market.entity.FreshGoods;
import com.qfedu.market.entity.GoodType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (FreshGoods)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface FreshGoodsDao {

    List<FreshGoods> getFreshGoodsByGoodsNameAndGtid(@Param("goodsName") String goodsName, @Param("gtid") Integer gtid);

    List<FreshGoods> getFreshGoodsByChoose(@Param("pre") Integer pre, @Param("discount") Integer discount, @Param("gtid") Integer gtid);

    /**
     * 通过ID查询单条数据
     *
     * @param fdid 主键
     * @return 实例对象
     */
    FreshGoods queryById(String fdid);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<FreshGoods> queryAllByLimit(@Param("gtid") int gtid, @Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param freshGoods 实例对象
     * @return 对象列表
     */
    List<FreshGoods> queryAll(FreshGoods freshGoods);

    /**
     * 新增数据
     *
     * @param freshGoods 实例对象
     * @return 影响行数
     */
    int insert(FreshGoods freshGoods);

    /**
     * 修改数据
     *
     * @param freshGoods 实例对象
     * @return 影响行数
     */
    int update(FreshGoods freshGoods);

    /**
     * 通过主键删除数据
     *
     * @param fdid 主键
     * @return 影响行数
     */
    int deleteById(String fdid);

    List<FreshGoods> getDiscountGoods();

    List<FreshGoods> getSpecialGood();

}