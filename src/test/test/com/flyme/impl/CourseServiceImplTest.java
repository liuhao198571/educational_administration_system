package com.flyme.impl;

import com.flyme.po.Course;
import com.flyme.po.CourseCustom;
import com.flyme.service.CourseService;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class CourseServiceImplTest {


    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext(new String[]{"spring/applicationContext-dao.xml",
                "spring/applicationContext-service.xml"});
    }

    @Test
    public void findById() throws Exception {

        CourseService courseService = (CourseService) applicationContext.getBean("courseServiceImpl");

        CourseCustom courseCustom = courseService.findById(1);

        System.out.println(courseCustom.toString());
    }

    @Test
    public void findByTeacherID() throws Exception {

        CourseService courseService = (CourseService) applicationContext.getBean("courseServiceImpl");

        List<CourseCustom> byTeacherID = courseService.findByTeacherID(1001);
//        System.out.printf(byTeacherID.toString());
    }


    @Test
    public void findAllCourse() throws Exception {

        CourseService courseService = (CourseService) applicationContext.getBean("courseServiceImpl");

        List<Course> allCourse = courseService.findAllCourse();
        System.out.printf(allCourse.toString());
    }
}