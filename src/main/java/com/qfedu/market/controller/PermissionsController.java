package com.qfedu.market.controller;

import com.qfedu.market.entity.Permissions;
import com.qfedu.market.service.PermissionsService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * (Permissions)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@RestController
@RequestMapping("permissions")
public class PermissionsController {
    /**
     * 服务对象
     */
    @Resource
    private PermissionsService permissionsService;

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public Permissions selectOne(Integer id) {
        return this.permissionsService.queryById(id);
    }

}