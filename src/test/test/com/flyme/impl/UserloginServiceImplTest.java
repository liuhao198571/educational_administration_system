package com.flyme.impl;

import com.flyme.po.Userlogin;
import com.flyme.service.UserloginService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class UserloginServiceImplTest {

    private ApplicationContext applicationContext;
    UserloginService userloginService;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext(new String[]{"spring/applicationContext-dao.xml",
                "spring/applicationContext-service.xml"});
        userloginService = (UserloginService) applicationContext.getBean("userloginServiceImpl");
    }

    @Test
    public void findByName() throws Exception {
        Userlogin u = userloginService.findByName("123");
        System.out.println();
    }

}