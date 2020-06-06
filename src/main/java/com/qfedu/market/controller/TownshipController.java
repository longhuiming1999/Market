package com.qfedu.market.controller;

import com.qfedu.market.entity.Township;
import com.qfedu.market.service.TownshipService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Township)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@RestController
public class TownshipController {
    /**
     * 服务对象
     */
    @Resource
    private TownshipService townshipService;

    @PostMapping("findTownShipsByCid")
    @ResponseBody
    public List<Township> findTownShipsByCid(@RequestParam("cid") Integer cid) {
        List<Township> townshipList = townshipService.queryByCid(cid);
        return townshipList;
    }

}