package com.flyme.service.impl;

import com.flyme.mapper.TeacherMapper;
import com.flyme.po.TeacherExample;
import com.flyme.service.ChartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChartsServiceImpl implements ChartsService {
    @Autowired
    private TeacherMapper teacherMapper;

    public int getDegreeA() throws Exception {
        TeacherExample teacherExample = new TeacherExample();
        int i = teacherMapper.countByDegreeA(teacherExample);
        return i;
    }

    public int getDegreeB() throws Exception {
        TeacherExample teacherExample = new TeacherExample();
        int i = teacherMapper.countByDegreeB(teacherExample);
        return i;
    }

    public int getDegreeC() throws Exception {
        TeacherExample teacherExample = new TeacherExample();
        int i = teacherMapper.countByDegreeC(teacherExample);
        return i;
    }
}
