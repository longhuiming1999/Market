package com.qfedu.market.controller;

import com.qfedu.market.entity.OrderDetial;
import com.qfedu.market.service.OrderDetialService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (OrderDetial)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@RestController
@RequestMapping("orderDetial")
public class OrderDetialController {
    /**
     * 服务对象
     */
    @Resource
    private OrderDetialService orderDetialService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public OrderDetial selectOne(Integer id) {
        return this.orderDetialService.queryById(id);
    }

}