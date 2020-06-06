package com.qfedu.market.service.impl;

import com.qfedu.market.entity.Address;
import com.qfedu.market.dao.AddressDao;
import com.qfedu.market.service.AddressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Address)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
@Service("addressService")
public class AddressServiceImpl implements AddressService {
    @Resource
    private AddressDao addressDao;

    @Override
    public List<Address> queryByUid(String uid) {
        return addressDao.queryByUid(uid);
    }

    /**
     * 通过ID查询单条数据
     *
     * @param did 主键
     * @return 实例对象
     */
    @Override
    public Address queryById(Integer did) {
        return this.addressDao.queryById(did);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    @Override
    public List<Address> queryAllByLimit(int offset, int limit) {
        return this.addressDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param address 实例对象
     * @return 实例对象
     */
    @Override
    public Address insert(Address address) {
        this.addressDao.insert(address);
        return address;
    }

    /**
     * 修改数据
     *
     * @param address 实例对象
     * @return 实例对象
     */
    @Override
    public Address update(Address address) {
        this.addressDao.update(address);
        return this.queryById(address.getDid());
    }

    /**
     * 通过主键删除数据
     *
     * @param did 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer did) {
        return this.addressDao.deleteById(did) > 0;
    }
}