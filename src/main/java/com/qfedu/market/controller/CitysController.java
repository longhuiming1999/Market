package com.qfedu.market.controller;

import com.qfedu.market.entity.Citys;
import com.qfedu.market.service.CitysService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Citys)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
@RestController
public class CitysController {
    /**
     * 服务对象
     */
    @Resource
    private CitysService citysService;

    @PostMapping("findCitysByPid")
    @ResponseBody
    public List<Citys> findAllCityByPid(@RequestParam("pid") Integer pid){
        List<Citys> citys = citysService.queryByPid(pid);
        return citys;
    }
}