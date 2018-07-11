package com.flyme.mapper;

import com.flyme.po.CourseCustom;
import com.flyme.po.PagingVO;

import java.util.List;


public interface CourseMapperCustom {

    //分页查询学生信息
    List<CourseCustom> findByPaging(PagingVO pagingVO) throws Exception;

}
