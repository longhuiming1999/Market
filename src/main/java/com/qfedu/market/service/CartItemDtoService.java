package com.qfedu.market.service;

import com.qfedu.market.dto.CartItemDto;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartItemDtoService {
    CartItemDto queryCartItemDtoByFdid(String fdid, String uid);

    List<CartItemDto> queryCartItemDtoByUid(String uid, Integer currentPage, Integer pageSize);
}
