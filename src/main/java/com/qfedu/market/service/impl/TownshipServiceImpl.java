package com.qfedu.market.service.impl;

import com.qfedu.market.entity.Township;
import com.qfedu.market.dao.TownshipDao;
import com.qfedu.market.service.TownshipService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Township)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Service("townshipService")
public class TownshipServiceImpl implements TownshipService {
    @Resource
    private TownshipDao townshipDao;

    @Override
    public List<Township> queryByCid(Integer cid) {
        return townshipDao.queryByCid(cid);
    }

    /**
     * 通过ID查询单条数据
     *
     * @param tid 主键
     * @return 实例对象
     */
    @Override
    public Township queryById(Integer tid) {
        return this.townshipDao.queryById(tid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Township> queryAllByLimit(int offset, int limit) {
        return this.townshipDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param township 实例对象
     * @return 实例对象
     */
    @Override
    public Township insert(Township township) {
        this.townshipDao.insert(township);
        return township;
    }

    /**
     * 修改数据
     *
     * @param township 实例对象
     * @return 实例对象
     */
    @Override
    public Township update(Township township) {
        this.townshipDao.update(township);
        return this.queryById(township.getTid());
    }

    /**
     * 通过主键删除数据
     *
     * @param tid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer tid) {
        return this.townshipDao.deleteById(tid) > 0;
    }
}