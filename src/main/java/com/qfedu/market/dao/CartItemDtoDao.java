package com.qfedu.market.dao;

import com.qfedu.market.dto.CartItemDto;
import com.qfedu.market.entity.GoodType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartItemDtoDao {

    CartItemDto queryCartItemDtoByFdid(@Param("fdid") String fdid, @Param("uid") String uid);

    List<CartItemDto> queryCartItemDtoByUid(@Param("uid") String uid, @Param("currentPage") Integer currentPage, @Param("pageSize") Integer pageSize);
}
