package com.qfedu.market.service.impl;

import com.qfedu.market.entity.Cart;
import com.qfedu.market.dao.CartDao;
import com.qfedu.market.service.CartService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Cart)表服务实现类
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
@Service("cartService")
public class CartServiceImpl implements CartService {
    @Resource
    private CartDao cartDao;

    @Override
    public int deleteByFdid(String fdid) {
        return cartDao.deleteByFdid(fdid);
    }

    @Override
    public List<Cart> queryByUserId(String uid) {
        return cartDao.queryByUserId(uid);
    }

    /**
     * 通过ID查询单条数据
     *
     * @param cid 主键
     * @return 实例对象
     */
    @Override
    public Cart queryById(Integer cid) {
        return this.cartDao.queryById(cid);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<Cart> queryAllByLimit(int offset, int limit) {
        return this.cartDao.queryAllByLimit(offset, limit);
    }

    /**
     * 新增数据
     *
     * @param cart 实例对象
     * @return 实例对象
     */
    @Override
    public Cart insert(Cart cart) {
        this.cartDao.insert(cart);
        return cart;
    }

    /**
     * 修改数据
     *
     * @param cart 实例对象
     * @return 实例对象
     */
    @Override
    public Cart update(Cart cart) {
        this.cartDao.update(cart);
        return this.queryById(cart.getCid());
    }

    /**
     * 通过主键删除数据
     *
     * @param cid 主键
     * @return 是否成功
     */
    @Override
    public boolean deleteById(Integer cid) {
        return this.cartDao.deleteById(cid) > 0;
    }
}