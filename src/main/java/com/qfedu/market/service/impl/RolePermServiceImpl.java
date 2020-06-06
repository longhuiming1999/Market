package com.qfedu.market.service.impl;

import com.qfedu.market.entity.RolePerm;
import com.qfedu.market.dao.RolePermDao;
import com.qfedu.market.service.RolePermService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (RolePerm)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Service("rolePermService")
public class RolePermServiceImpl implements RolePermService {
    @Resource
    private RolePermDao rolePermDao;

    /**
     * 通过ID查询单条数据
     *
     * @param rid 主键
     * @return 实例对象
     */
    @Override
    public RolePerm queryById(Integer rid) {
        return this.rolePermDao.queryById(rid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<RolePerm> queryAllByLimit(int offset, int limit) {
        return this.rolePermDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param rolePerm 实例对象
     * @return 实例对象
     */
    @Override
    public RolePerm insert(RolePerm rolePerm) {
        this.rolePermDao.insert(rolePerm);
        return rolePerm;
    }

    /**
     * 修改数据
     *
     * @param rolePerm 实例对象
     * @return 实例对象
     */
    @Override
    public RolePerm update(RolePerm rolePerm) {
        this.rolePermDao.update(rolePerm);
        return this.queryById(rolePerm.getRid());
    }

    /**
     * 通过主键删除数据
     *
     * @param rid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer rid) {
        return this.rolePermDao.deleteById(rid) > 0;
    }
}