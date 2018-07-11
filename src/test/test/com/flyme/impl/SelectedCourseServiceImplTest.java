package com.flyme.impl;

import com.flyme.po.SelectedCourseCustom;
import com.flyme.service.SelectedCourseService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class SelectedCourseServiceImplTest {


    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext(new String[]{"spring/applicationContext-dao.xml",
                "spring/applicationContext-service.xml"});
    }

    @Test
    public void findByCourseID() throws Exception {

        SelectedCourseService service = (SelectedCourseService) applicationContext.getBean("selectedCourseServiceImpl");

        List<SelectedCourseCustom> list = service.findByCourseID(1);

        System.out.println();

    }


}