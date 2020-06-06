package com.qfedu.market.service.impl;

import com.qfedu.market.entity.FreshGoods;
import com.qfedu.market.dao.FreshGoodsDao;
import com.qfedu.market.service.FreshGoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (FreshGoods)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Service("freshGoodsService")
public class FreshGoodsServiceImpl implements FreshGoodsService {
    @Resource
    private FreshGoodsDao freshGoodsDao;

    @Override
    public List<FreshGoods> getFreshGoodsByGoodsNameAndGtid(String goodsName, Integer gtid) {
        return freshGoodsDao.getFreshGoodsByGoodsNameAndGtid(goodsName, gtid);
    }

    @Override
    public List<FreshGoods> getFreshGoodsByChoose(Integer pre, Integer discount, Integer gtid) {
        return freshGoodsDao.getFreshGoodsByChoose(pre, discount, gtid);
    }

    @Override
    public List<FreshGoods> getDiscountGoods() {
        return freshGoodsDao.getDiscountGoods();
    }

    @Override
    public List<FreshGoods> getSpecialGood() {
        return freshGoodsDao.getSpecialGood();
    }

    /**
     * 通过ID查询单条数据
     *
     * @param fdid 主键
     * @return 实例对象
     */
    @Override
    public FreshGoods queryById(String fdid) {
        return this.freshGoodsDao.queryById(fdid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<FreshGoods> queryAllByLimit(int gtid, int offset, int limit) {
        return this.freshGoodsDao.queryAllByLimit(gtid, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    @Override
    public FreshGoods insert(FreshGoods freshGoods) {
        this.freshGoodsDao.insert(freshGoods);
        return freshGoods;
    }

    /**
     * 修改数据
     *
     * @param freshGoods 实例对象
     * @return 实例对象
     */
    @Override
    public FreshGoods update(FreshGoods freshGoods) {
        this.freshGoodsDao.update(freshGoods);
        return this.queryById(freshGoods.getFdid());
    }

    /**
     * 通过主键删除数据
     *
     * @param fdid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(String fdid) {
        return this.freshGoodsDao.deleteById(fdid) > 0;
    }
}