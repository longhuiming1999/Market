package com.qfedu.market.service.impl;

import com.qfedu.market.entity.Logistics;
import com.qfedu.market.dao.LogisticsDao;
import com.qfedu.market.service.LogisticsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Logistics)表服务实现类
 *
 * @author makejava
 * @since 2020-04-04 18:18:33
 */
@Service("logisticsService")
public class LogisticsServiceImpl implements LogisticsService {
    @Resource
    private LogisticsDao logisticsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param lid 主键
     * @return 实例对象
     */
    @Override
    public Logistics queryById(Integer lid) {
        return this.logisticsDao.queryById(lid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Logistics> queryAllByLimit(int offset, int limit) {
        return this.logisticsDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param logistics 实例对象
     * @return 实例对象
     */
    @Override
    public Logistics insert(Logistics logistics) {
        this.logisticsDao.insert(logistics);
        return logistics;
    }

    /**
     * 修改数据
     *
     * @param logistics 实例对象
     * @return 实例对象
     */
    @Override
    public Logistics update(Logistics logistics) {
        this.logisticsDao.update(logistics);
        return this.queryById(logistics.getLid());
    }

    /**
     * 通过主键删除数据
     *
     * @param lid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer lid) {
        return this.logisticsDao.deleteById(lid) > 0;
    }
}