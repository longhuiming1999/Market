package com.qfedu.market.controller;

import com.qfedu.market.dto.CartItemDto;
import com.qfedu.market.entity.*;
import com.qfedu.market.service.*;
import org.aspectj.weaver.ast.Or;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * (Cart)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:53
 */
@Controller
public class CartController {
    /**
     * 服务对象
     */
    @Resource
    private CartService cartService;

    @Resource
    private CartItemDtoService cartItemDtoService;

    @Resource
    private FreshGoodsService freshGoodsService;

    @Resource
    private OrdersService ordersService;

    @Resource
    private OrderDetialService orderDetialService;

    @GetMapping("/updateCartByFdid")
    public String updateCart(@RequestParam("count") Integer count, @RequestParam("cid") Integer cid) {
        Cart cart = cartService.queryById(cid);
        cart.setCount(count);
        cartService.update(cart);
        return "redirect:/toCartPage";
    }

    @GetMapping("toCartPage")
    public String toCartPage(HttpSession session, Model model,
                             @RequestParam(value = "currentPage", defaultValue = "1") Integer cp,
                             @RequestParam(value = "pageSize", defaultValue = "5") Integer ps
    ) {
        Users user = (Users) session.getAttribute("users");
        String uid = "";
        if (user != null) {
            uid = user.getUserId();
        }

        PageBean<CartItemDto> pageBean = new PageBean<>();

        pageBean.setCurrentPage(cp);
        pageBean.setPageSize(ps);

        int totalDataNum = cartItemDtoService.queryCartItemDtoByUid(uid, null, null).size();
        pageBean.setTotalDataNum(totalDataNum);
        pageBean.setTotalPageNum(pageBean.getTotalPageNum());

        Integer off = (pageBean.getCurrentPage() - 1) * pageBean.getPageSize();

        List<CartItemDto> cart = cartItemDtoService.queryCartItemDtoByUid(uid, off, pageBean.getPageSize());
        pageBean.setDataList(cart);

        Map<String, String> imgsMap = new HashMap<>();
        for (CartItemDto cartItemDto : cart) {
            String img = cartItemDto.getImg().split("-")[0];
            imgsMap.put(cartItemDto.getFdid(), img);
        }
        model.addAttribute("pageBean", pageBean);
        model.addAttribute("imgs", imgsMap);
        return "checkout.jsp";
    }

    /**
     * 添加商品到购物车
     *
     * @param fdid
     * @param session
     * @return
     */
    @PostMapping("cart")
    @ResponseBody
    public String cart(@RequestParam("fdid") String fdid, HttpSession session) {
        Users user = (Users) session.getAttribute("users");

        String uid = "";
        if (user != null) {
            uid = user.getUserId();
        }
        System.out.println(uid);
        List<Cart> cartList = cartService.queryByUserId(uid);

        boolean flag = true;
        if (cartList != null) {
            for (Cart cart : cartList) {
                if (cart.getFdid().equals(fdid)) {
                    cart.setCount(cart.getCount() + 1);
                    cartService.update(cart);
                    flag = false;
                    break;
                }
            }
        }
        if (flag) {
            Cart cart = new Cart();
            cart.setCount(1);
            cart.setUserId(uid);
            cart.setFdid(fdid);
            Cart insert = cartService.insert(cart);
        }
        return "true";
    }

    /**
     * 结账
     *
     * @param oneList
     * @return
     */
    @PostMapping("saveCartItem")
    public String saveCartItem(@RequestParam(value = "one", defaultValue = "") List<String> oneList, Model model, HttpSession session) {
        List<CartItemDto> list = new ArrayList<>();
        Map<String, String> map = new HashMap<>();

        Double totalPrice = 0.0;

        Users users = (Users) session.getAttribute("users");

        for (String fdid : oneList) {
            CartItemDto cartItemDto = cartItemDtoService.queryCartItemDtoByFdid(fdid, users.getUserId());
            String img = cartItemDto.getImg().split("-")[0];
            map.put(fdid, img);
            list.add(cartItemDto);
        }

        for (CartItemDto cartItemDto : list) {
            totalPrice += cartItemDto.getPrice() * cartItemDto.getDiscount() * cartItemDto.getCount() / 100;
        }


        model.addAttribute("list", list);
        model.addAttribute("imgs", map);
        model.addAttribute("totalPrice", totalPrice);
        return "payment.jsp";
    }

    @GetMapping("deleteCartByFdid")
    @ResponseBody
    public String deleteCartByFdid(@RequestParam("fdid") String fdid) {
        System.out.println(fdid);
        int num = cartService.deleteByFdid(fdid);
        if (num > 0) {
            return "true";
        }
        return "false";
    }

}