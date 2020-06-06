package com.qfedu.market.service.impl;

import com.qfedu.market.entity.Permissions;
import com.qfedu.market.dao.PermissionsDao;
import com.qfedu.market.service.PermissionsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Permissions)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Service("permissionsService")
public class PermissionsServiceImpl implements PermissionsService {
    @Resource
    private PermissionsDao permissionsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param pid 主键
     * @return 实例对象
     */
    @Override
    public Permissions queryById(Integer pid) {
        return this.permissionsDao.queryById(pid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Permissions> queryAllByLimit(int offset, int limit) {
        return this.permissionsDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param permissions 实例对象
     * @return 实例对象
     */
    @Override
    public Permissions insert(Permissions permissions) {
        this.permissionsDao.insert(permissions);
        return permissions;
    }

    /**
     * 修改数据
     *
     * @param permissions 实例对象
     * @return 实例对象
     */
    @Override
    public Permissions update(Permissions permissions) {
        this.permissionsDao.update(permissions);
        return this.queryById(permissions.getPid());
    }

    /**
     * 通过主键删除数据
     *
     * @param pid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer pid) {
        return this.permissionsDao.deleteById(pid) > 0;
    }
}