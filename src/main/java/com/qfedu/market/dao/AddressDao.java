package com.qfedu.market.dao;

import com.qfedu.market.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * (Address)表数据库访问层
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
public interface AddressDao {

    List<Address> queryByUid(@Param("uid") String uid);

    /**
     * 通过ID查询单条数据
     *
     * @param did 主键
     * @return 实例对象
     */
    Address queryById(Integer did);

    /**
     * 查询指定行数据
     *
     * @param offset 查询起始位置
     * @param limit  查询条数
     * @return 对象列表
     */
    List<Address> queryAllByLimit(@Param("offset") int offset, @Param("limit") int limit);


    /**
     * 通过实体作为筛选条件查询
     *
     * @param address 实例对象
     * @return 对象列表
     */
    List<Address> queryAll(Address address);

    /**
     * 新增数据
     *
     * @param address 实例对象
     * @return 影响行数
     */
    int insert(Address address);

    /**
     * 修改数据
     *
     * @param address 实例对象
     * @return 影响行数
     */
    int update(Address address);

    /**
     * 通过主键删除数据
     *
     * @param did 主键
     * @return 影响行数
     */
    int deleteById(Integer did);

}