package com.qfedu.market.service.impl;

import com.qfedu.market.entity.EmpRole;
import com.qfedu.market.dao.EmpRoleDao;
import com.qfedu.market.service.EmpRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (EmpRole)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
@Service("empRoleService")
public class EmpRoleServiceImpl implements EmpRoleService {
    @Resource
    private EmpRoleDao empRoleDao;

    /**
     * 通过ID查询单条数据
     *
     * @param eid 主键
     * @return 实例对象
     */
    @Override
    public EmpRole queryById(Integer eid) {
        return this.empRoleDao.queryById(eid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<EmpRole> queryAllByLimit(int offset, int limit) {
        return this.empRoleDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param empRole 实例对象
     * @return 实例对象
     */
    @Override
    public EmpRole insert(EmpRole empRole) {
        this.empRoleDao.insert(empRole);
        return empRole;
    }

    /**
     * 修改数据
     *
     * @param empRole 实例对象
     * @return 实例对象
     */
    @Override
    public EmpRole update(EmpRole empRole) {
        this.empRoleDao.update(empRole);
        return this.queryById(empRole.getEid());
    }

    /**
     * 通过主键删除数据
     *
     * @param eid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer eid) {
        return this.empRoleDao.deleteById(eid) > 0;
    }
}