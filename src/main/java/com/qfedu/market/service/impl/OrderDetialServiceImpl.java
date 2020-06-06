package com.qfedu.market.service.impl;

import com.qfedu.market.entity.OrderDetial;
import com.qfedu.market.dao.OrderDetialDao;
import com.qfedu.market.service.OrderDetialService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (OrderDetial)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Service("orderDetialService")
public class OrderDetialServiceImpl implements OrderDetialService {
    @Resource
    private OrderDetialDao orderDetialDao;

    /**
     * 通过ID查询单条数据
     *
     * @param did 主键
     * @return 实例对象
     */
    @Override
    public OrderDetial queryById(Integer did) {
        return this.orderDetialDao.queryById(did);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<OrderDetial> queryAllByLimit(int offset, int limit) {
        return this.orderDetialDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param orderDetial 实例对象
     * @return 实例对象
     */
    @Override
    public OrderDetial insert(OrderDetial orderDetial) {
        this.orderDetialDao.insert(orderDetial);
        return orderDetial;
    }

    /**
     * 修改数据
     *
     * @param orderDetial 实例对象
     * @return 实例对象
     */
    @Override
    public OrderDetial update(OrderDetial orderDetial) {
        this.orderDetialDao.update(orderDetial);
        return this.queryById(orderDetial.getDid());
    }

    /**
     * 通过主键删除数据
     *
     * @param did 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer did) {
        return this.orderDetialDao.deleteById(did) > 0;
    }
}