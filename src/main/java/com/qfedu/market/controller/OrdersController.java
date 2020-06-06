package com.qfedu.market.controller;

import com.qfedu.market.entity.Logistics;
import com.qfedu.market.entity.OrderDetial;
import com.qfedu.market.entity.Orders;
import com.qfedu.market.entity.Users;
import com.qfedu.market.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * (Orders)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Controller
public class OrdersController {
    /**
     * 服务对象
     */
    @Resource
    private OrdersService ordersService;

    @Resource
    private OrderDetialService detialService;

    @Resource
    private CartItemDtoService cartItemDtoService;

    @Resource
    private LogisticsService logisticsService;

    @Resource
    private CartService cartService;

    @PostMapping("saveOrder")
    public String saveOrder(@RequestParam("payType") Integer payType,
                            @RequestParam("fdid") List<String> fdidList,
                            @RequestParam("totalPrice") Double totalPrice,
                            @RequestParam("address") Integer did,
                            HttpSession session) {
        Users users = (Users) session.getAttribute("users");
        Orders orders = new Orders();
        orders.setTotalPrice(totalPrice);
        orders.setPayType(payType);
        orders.setUserId(users.getUserId());
        orders.setOrderStatus(0);

        String oid = UUID.randomUUID().toString().replace("-", "");
        orders.setOid(oid);

        // 生成订单
        Orders newOrders = ordersService.insert(orders);

        // 生成订单详情
        for (String fdid : fdidList) {
            OrderDetial detial = new OrderDetial();
            detial.setOid(newOrders.getOid());
            Integer count = cartItemDtoService.queryCartItemDtoByFdid(fdid, users.getUserId()).getCount();
            detial.setFdid(fdid);
            detial.setCount(count);
            detialService.insert(detial);
            cartService.deleteByFdid(fdid);
        }

        Logistics logistics = new Logistics();
        logistics.setUserId(users.getUserId());
        logistics.setOid(newOrders.getOid());
        logistics.setDid(did);
        logistics.setPayTime(new Date());
        logistics.setStatus(0);
        logisticsService.insert(logistics);

        return "index.jsp";
    }

}