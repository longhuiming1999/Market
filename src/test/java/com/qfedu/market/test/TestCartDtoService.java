package com.qfedu.market.test;/*
 * author:lg
 * date:2020/4/3
 */

import com.qfedu.market.dto.CartItemDto;
import com.qfedu.market.service.CartItemDtoService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class TestCartDtoService {
    @Resource
    CartItemDtoService cartItemDtoService;

    @Test
    public void testCartDtoService(){
        List<CartItemDto> dto = cartItemDtoService.queryCartItemDtoByUid("20200330185428", null, null);
        for (CartItemDto cartItemDto : dto) {
            System.out.println(cartItemDto);
        }
    }
}
