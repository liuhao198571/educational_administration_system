package com.flyme.impl;

import com.flyme.service.ChartsService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class ChartsServiceImplTest {
    private ApplicationContext applicationContext;
    ChartsService chartsService;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext(new String[]{"spring/applicationContext-dao.xml",
                "spring/applicationContext-service.xml"});
        chartsService = (ChartsService) applicationContext.getBean("chartsServiceImpl");
    }

    @Test
    public void getCountDegreeA() throws Exception {
        int A = chartsService.getDegreeA();
        int B = chartsService.getDegreeB();
        int C = chartsService.getDegreeC();
        System.out.println(A);
        System.out.println(B);
        System.out.println(C);
    }


}