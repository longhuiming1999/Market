package com.qfedu.market.test;/*
 * author:lg
 * date:2020/3/27
 */

import com.qfedu.market.dao.CartItemDtoDao;
import com.qfedu.market.dao.UsersDao;
import com.qfedu.market.dto.CartItemDto;
import com.qfedu.market.entity.FreshGoods;
import com.qfedu.market.entity.OrderDetial;
import com.qfedu.market.entity.Orders;
import com.qfedu.market.entity.Users;
import com.qfedu.market.service.FreshGoodsService;
import com.qfedu.market.service.OrderDetialService;
import com.qfedu.market.service.OrdersService;
import com.qfedu.market.service.UsersService;
import org.aspectj.weaver.ast.Or;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class TestDaoMapper {
    @Resource
    UsersDao usersDao;

    @Resource
    UsersService usersService;

    @Resource
    CartItemDtoDao cartItemDtoDao;

    @Resource
    FreshGoodsService freshGoodsService;
    @Test
    public void testQueryUsersByUserNameAndPassword(){
        Users users = usersService.queryByUserNameAndPassword("张三", "zhangsan");
        System.out.println(users);
    }

    @Test
    public void test(){
        List<CartItemDto> list = cartItemDtoDao.queryCartItemDtoByUid("20190514112608",null,null);
        for (CartItemDto cartItemDto : list) {
            System.out.println(cartItemDto.toString());
        }
    }

    @Resource
    OrdersService ordersService;

    @Test
    public void test3(){
        Orders orders = new Orders();
        String oid = UUID.randomUUID().toString().replace("-", "");
        orders.setOrderStatus(1);
        orders.setUserId("20190514112608");
        orders.setTotalPrice(600.0);
        orders.setPayType(1);
        orders.setOid(oid);
        ordersService.insert(orders);
    }

    @Resource
    OrderDetialService orderDetialService;

    @Test
    public void test4(){
        OrderDetial orderDetial = new OrderDetial();
        orderDetial.setOid("c0daddd593574965a037b95f031978da");
        orderDetial.setFdid("0503a00e764411e9ba5954e1ade9802f");
        orderDetial.setCount(1);
        orderDetialService.insert(orderDetial);
    }

    @Test
    public void test5(){
        List<FreshGoods> freshGoodsByChoose = freshGoodsService.getFreshGoodsByChoose(null, null, 1);
        for (FreshGoods freshGoods : freshGoodsByChoose) {
            System.out.println(freshGoods);
        }
    }
}
