package com.qfedu.market.service.impl;/*
 * author:lg
 * date:2020/3/27
 */

import com.qfedu.market.dao.CartItemDtoDao;
import com.qfedu.market.dto.CartItemDto;
import com.qfedu.market.service.CartItemDtoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CartItemDtoServiceImpl implements CartItemDtoService {
    @Resource
    CartItemDtoDao cartItemDtoDao;

    @Override
    public CartItemDto queryCartItemDtoByFdid(String fdid, String uid) {
        return cartItemDtoDao.queryCartItemDtoByFdid(fdid, uid);
    }

    @Override
    public List<CartItemDto> queryCartItemDtoByUid(String uid, Integer currentPage, Integer pageSize) {
        return cartItemDtoDao.queryCartItemDtoByUid(uid, currentPage, pageSize);
    }
}
