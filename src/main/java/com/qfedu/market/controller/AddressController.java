package com.qfedu.market.controller;

import com.qfedu.market.entity.Address;
import com.qfedu.market.entity.Province;
import com.qfedu.market.entity.Users;
import com.qfedu.market.service.AddressService;
import com.qfedu.market.service.CitysService;
import com.qfedu.market.service.ProvinceService;
import com.qfedu.market.service.TownshipService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * (Address)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
@Controller
public class AddressController {
    /**
     * 服务对象
     */
    @Resource
    private AddressService addressService;

    @Resource
    private ProvinceService provinceService;

    @Resource
    private CitysService citysService;

    @Resource
    private TownshipService townshipService;

    @GetMapping("findAddressByDid")
    @ResponseBody
    public Address queryById(@RequestParam("did") Integer did) {
        Address address = addressService.queryById(did);
        return address;
    }

    @PostMapping("findAddressByUid")
    @ResponseBody
    public List<Address> findAddressByUid(HttpSession session){
        Users users = (Users) session.getAttribute("users");
        List<Address> list = null;
        if(users != null){
            String userId = users.getUserId();
            list = addressService.queryByUid(userId);
        }

        return list;
    }

    @GetMapping("getAddressByUid")
    public String getAddressByUid(Model model, HttpSession session) {
        Users users = (Users) session.getAttribute("users");
        if (users != null) {
            String userId = users.getUserId();
            List<Address> addressList = addressService.queryByUid(userId);
            model.addAttribute("addressList", addressList);
        }
        return "addressManager.jsp";
    }


    @GetMapping("deleteAddressByDid")
    public String deleteAddressByDid(@RequestParam("did") Integer did) {
        addressService.deleteById(did);
        return "redirect:/getAddressByUid";
    }

    @PostMapping("saveAddress")
    @ResponseBody
    public String saveAddress(Address address, HttpSession session) {
        Users users = (Users) session.getAttribute("users");
        if (users != null) {
            String userId = users.getUserId();
            Integer types = 1;
            address.setUserId(userId);
            address.setTypes(types);
            addressService.insert(address);
        }
        return "true";
    }


    @PostMapping("updateAddress")
    @ResponseBody
    public String updateAddress(Address address, HttpSession session) {
        Users users = (Users) session.getAttribute("users");
        if (users != null) {
            String userId = users.getUserId();
            address.setUserId(userId);
            address.setTypes(1);
        }
        System.out.println(address.toString());
        addressService.update(address);
//        return "redirect:/getAddressByUid";
        return "true";
    }


}