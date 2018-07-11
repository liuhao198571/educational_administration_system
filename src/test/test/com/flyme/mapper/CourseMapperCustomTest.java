package com.flyme.mapper;

import com.flyme.po.CourseCustom;
import com.flyme.po.PagingVO;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class CourseMapperCustomTest {
    private ApplicationContext applicationContext;

    @Before
    public void setUp() throws Exception {
        applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext-dao.xml");
    }

    @Test
    public void findByPaging() throws Exception {
        CourseMapperCustom courseMapperCustom = (CourseMapperCustom) applicationContext.getBean("courseMapperCustom");
        PagingVO pagingVO = new PagingVO();
        pagingVO.setToPageNo(1);
        List<CourseCustom> list = courseMapperCustom.findByPaging(pagingVO);
        System.out.println();
    }
}