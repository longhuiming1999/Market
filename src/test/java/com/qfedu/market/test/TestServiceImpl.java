package com.qfedu.market.test;/*
 * author:lg
 * date:2020/3/24
 */

import com.qfedu.market.dao.AddressDao;
import com.qfedu.market.entity.Address;
import com.qfedu.market.entity.Citys;
import com.qfedu.market.entity.FreshGoods;
import com.qfedu.market.entity.Logistics;
import com.qfedu.market.service.AddressService;
import com.qfedu.market.service.CitysService;
import com.qfedu.market.service.FreshGoodsService;
import com.qfedu.market.service.LogisticsService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mybatis.xml")
public class TestServiceImpl {
    @Resource
    AddressService addressService;

    @Resource
    CitysService citysService;

    @Test
    public void testAddressService() {
        List<Address> list = addressService.queryAllByLimit(0, 100);
        for (Address address : list) {
            System.out.println(address);
        }
    }

    @Test
    public void testQueryByPid(){
        List<Citys> query = citysService.queryByPid(1);
        for (Citys citys : query) {
            System.out.println(citys);
        }
    }

    @Resource
    LogisticsService logisticsService;

    @Test
    public void testLogi(){
        Logistics logistics = new Logistics();
        logistics.setUserId("20200330185428");
        logistics.setOid("76a6b7f2e64249118ede537a96bd45fc");
        logistics.setDid(1);
        logistics.setPayTime(new Date());
        logistics.setStatus(0);

        logisticsService.insert(logistics);
    }

    @Test
    public void testLog(){
        Logistics logistics = logisticsService.queryById(1);
        System.out.println(logistics);
    }

    @Resource
    FreshGoodsService freshGoodsService;

    @Test
    public void testGetFreshGoodsByNamesAndGtid(){
        List<FreshGoods> list = freshGoodsService.getFreshGoodsByGoodsNameAndGtid("米", 10);
        for (FreshGoods freshGoods : list) {
            System.out.println(freshGoods);
        }
    }

}
