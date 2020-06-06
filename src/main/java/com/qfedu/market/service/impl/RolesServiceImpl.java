package com.qfedu.market.service.impl;

import com.qfedu.market.entity.Roles;
import com.qfedu.market.dao.RolesDao;
import com.qfedu.market.service.RolesService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Roles)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Service("rolesService")
public class RolesServiceImpl implements RolesService {
    @Resource
    private RolesDao rolesDao;

    /**
     * 通过ID查询单条数据
     *
     * @param rid 主键
     * @return 实例对象
     */
    @Override
    public Roles queryById(Integer rid) {
        return this.rolesDao.queryById(rid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Roles> queryAllByLimit(int offset, int limit) {
        return this.rolesDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param roles 实例对象
     * @return 实例对象
     */
    @Override
    public Roles insert(Roles roles) {
        this.rolesDao.insert(roles);
        return roles;
    }

    /**
     * 修改数据
     *
     * @param roles 实例对象
     * @return 实例对象
     */
    @Override
    public Roles update(Roles roles) {
        this.rolesDao.update(roles);
        return this.queryById(roles.getRid());
    }

    /**
     * 通过主键删除数据
     *
     * @param rid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer rid) {
        return this.rolesDao.deleteById(rid) > 0;
    }
}