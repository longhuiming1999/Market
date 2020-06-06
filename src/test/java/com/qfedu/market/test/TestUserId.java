package com.qfedu.market.test;/*
 * author:lg
 * date:2020/3/30
 */

import javafx.scene.input.DataFormat;
import org.junit.Test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TestUserId {

    @Test
    public void testId(){
        Date date = new Date();
        DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
        String format1 = format.format(date);
        System.out.println(format1);
    }
}
