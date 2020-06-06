package com.qfedu.market.service.impl;

import com.qfedu.market.entity.GoodType;
import com.qfedu.market.dao.GoodTypeDao;
import com.qfedu.market.service.GoodTypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (GoodType)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Service("goodTypeService")
public class GoodTypeServiceImpl implements GoodTypeService {
    @Resource
    private GoodTypeDao goodTypeDao;

    /**
     * 通过ID查询单条数据
     *
     * @param gtid 主键
     * @return 实例对象
     */
    @Override
    public GoodType queryById(Integer gtid) {
        return this.goodTypeDao.queryById(gtid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<GoodType> queryAllByLimit(int offset, int limit) {
        return this.goodTypeDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param goodType 实例对象
     * @return 实例对象
     */
    @Override
    public GoodType insert(GoodType goodType) {
        this.goodTypeDao.insert(goodType);
        return goodType;
    }

    /**
     * 修改数据
     *
     * @param goodType 实例对象
     * @return 实例对象
     */
    @Override
    public GoodType update(GoodType goodType) {
        this.goodTypeDao.update(goodType);
        return this.queryById(goodType.getGtid());
    }

    /**
     * 通过主键删除数据
     *
     * @param gtid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer gtid) {
        return this.goodTypeDao.deleteById(gtid) > 0;
    }
}