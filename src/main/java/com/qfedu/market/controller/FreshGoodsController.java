package com.qfedu.market.controller;

import com.qfedu.market.entity.FreshGoods;
import com.qfedu.market.entity.GoodType;
import com.qfedu.market.service.FreshGoodsService;
import com.qfedu.market.service.GoodTypeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * (FreshGoods)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Controller
public class FreshGoodsController {
    /**
     * 服务对象
     */
    @Resource
    private FreshGoodsService freshGoodsService;

    @Resource
    private GoodTypeService goodTypeService;


    @GetMapping("getGoodDetailsByFdid")
    public String getGoodDetailsByFdid(@RequestParam("fdid") String fdid, Model model) {
        FreshGoods freshGoods = freshGoodsService.queryById(fdid);
        String[] split = freshGoods.getImg().split("-");
        model.addAttribute("imgs", split);
        model.addAttribute("freshGoods", freshGoods);
        return "single.jsp";
    }

    @GetMapping("getGoodDetailsByFdid2")
    public String getGoodDetailsByFdid2(@RequestParam("fdid") String fdid, Model model) {
        FreshGoods freshGoods = freshGoodsService.queryById(fdid);
        String[] split = freshGoods.getImg().split("-");
        model.addAttribute("imgs", split);
        model.addAttribute("freshGoods", freshGoods);
        return "single.jsp";
    }

    @GetMapping("getFreshGoods")
    public String getGoodsByPage(@RequestParam(value = "cp", defaultValue = "1") int currentPage,
                                 @RequestParam(value = "ps", defaultValue = "6") int pageSize,
                                 @RequestParam(value = "gtid", defaultValue = "1") int gtid,
                                 HttpSession session,
                                 Model model) {
        currentPage = currentPage < 1 ? 1 : currentPage;
        pageSize = pageSize < 0 ? 3 : pageSize;
        int offset = (currentPage - 1) * pageSize;
        List<FreshGoods> list = freshGoodsService.queryAllByLimit(gtid, offset, pageSize);

        Map<String, String> imgMap = new HashMap<>();

        GoodType goodType = goodTypeService.queryById(gtid);

        for (FreshGoods freshGoods : list) {
            String[] split = freshGoods.getImg().split("-");
            imgMap.put(freshGoods.getFdid(), split[0]);
        }

        model.addAttribute("imgs", imgMap);
        model.addAttribute("freshGoods", list);
        model.addAttribute("goodType", goodType);

        return "product.jsp";
    }

    @GetMapping("getDiscountGoods")
    @ResponseBody
    public List<FreshGoods> getDiscountGoods() {
        return freshGoodsService.getDiscountGoods();
    }

    @GetMapping("getSpecialGood")
    @ResponseBody
    public List<FreshGoods> getSpecialGood() {
        return freshGoodsService.getSpecialGood();
    }

    @PostMapping("getFreshGoodsByChoose")
    @ResponseBody
    public List<FreshGoods> getFreshGoodsByChoose(@RequestParam("pre") Integer pre,
                                                  @RequestParam("discount") Integer discount,
                                                  @RequestParam("gtid") Integer gtid) {
        System.out.println(pre + discount + gtid);
        return freshGoodsService.getFreshGoodsByChoose(pre, discount, gtid);
    }

    @PostMapping("/getSouSuoGoods")
    public String getSouSuoGoods(@RequestParam("goodName") String goodName,
                                 @RequestParam("gtid") Integer gtid, Model model) {
        List<FreshGoods> list = freshGoodsService.getFreshGoodsByGoodsNameAndGtid(goodName, gtid);
        Map<String, String> map = new HashMap<>();
        for (FreshGoods freshGoods : list) {
            String img = freshGoods.getImg().split("-")[0];
            map.put(freshGoods.getFdid(), img);
        }
        model.addAttribute("imgs", map);
        model.addAttribute("freshGoods", list);
        return "product.jsp";
    }

}