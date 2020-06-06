package com.qfedu.market.controller;

import com.qfedu.market.entity.Citys;
import com.qfedu.market.entity.Province;
import com.qfedu.market.service.ProvinceService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * (Province)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@RestController
public class ProvinceController {
    /**
     * 服务对象
     */
    @Resource
    private ProvinceService provinceService;

    @PostMapping("findAllProvince")
    @ResponseBody
    public List<Province> findAllProvince(){
        List<Province> all = provinceService.queryAllByLimit(0, 20);
        return all;
    }
}