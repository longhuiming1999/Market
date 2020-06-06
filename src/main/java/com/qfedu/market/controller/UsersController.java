package com.qfedu.market.controller;

import com.qfedu.market.entity.Users;
import com.qfedu.market.service.UsersService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * (Users)表控制层
 *
 * @author makejava
 * @since 2020-03-24 16:41:54
 */
@Controller
public class UsersController {
    /**
     * 服务对象
     */
    @Resource
    private UsersService usersService;

    @PostMapping("updateUser")
    public String updateUser(Users users) {
        usersService.update(users);
        return "personCenter.jsp";
    }

    @PostMapping("createUser")
    public String createUser(Users user) {
        System.out.println(user.toString());
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        String userId = format.format(date);
        user.setUserId(userId);
        Users insert = usersService.insert(user);
        return "index.jsp";
    }

    @PostMapping("userLogin")
    @ResponseBody
    public String userLogin(@RequestParam("username") String userName, @RequestParam("password") String password, HttpSession session) {
        Users users = usersService.queryByUserNameAndPassword(userName, password);
        if (users != null) {
            session.setAttribute("users", users);
            System.out.println("!!!!!!!!!!!!!!!!!!!!!!!" + users.toString());
            return "true";
        } else {
            return "false";
        }
    }

    @GetMapping("userLogout")
    public String userLogout(HttpSession session) {
        if (session.getAttribute("users") != null) {
            session.removeAttribute("users");
        }
        return "index.jsp";
    }
}