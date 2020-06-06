package com.qfedu.market.service;

import com.qfedu.market.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Address)表服务接口
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public interface AddressService {

    List<Address> queryByUid(String uid);

    /**
     * 通过ID查询单条数据
     *
     * @param did 主键
     * @return 实例对象
     */
    Address queryById(Integer did);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Address> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param address 实例对象
     * @return 实例对象
     */
    Address insert(Address address);

    /**
     * 修改数据
     *
     * @param address 实例对象
     * @return 实例对象
     */
    Address update(Address address);

    /**
     * 通过主键删除数据
     *
     * @param did 主键
     * @return 是否成功
     */
    boolean deleteById(Integer did);

}