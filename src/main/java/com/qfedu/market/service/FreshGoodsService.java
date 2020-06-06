package com.qfedu.market.service;

import com.qfedu.market.entity.FreshGoods;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (FreshGoods)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
public interface FreshGoodsService {

    List<FreshGoods> getFreshGoodsByGoodsNameAndGtid(String goodsName, Integer gtid);

    List<FreshGoods> getFreshGoodsByChoose(Integer pre, Integer discount, Integer gtid);

    List<FreshGoods> getDiscountGoods();

    List<FreshGoods> getSpecialGood();

    /**
     * 通过ID查询单条数据
     *
     * @param fdid 主键
     * @return 实例对象
     */
    FreshGoods queryById(String fdid);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<FreshGoods> queryAllByLimit(int gtid, int offset, int limit);

    /**
     * 新增数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    FreshGoods insert(FreshGoods freshGoods);

    /**
     * 修改数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    FreshGoods update(FreshGoods freshGoods);

    /**
     * 通过主键删除数据
     *
     * @param fdid 主键
     * @return 是否成功
     */
    boolean deleteById(String fdid);

}