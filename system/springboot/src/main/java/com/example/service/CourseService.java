package com.example.service;

import cn.hutool.core.util.ObjectUtil;
import com.example.entity.Course;
import com.example.entity.Speciality;
import com.example.mapper.ChoiceMapper;
import com.example.mapper.CollegeMapper;
import com.example.mapper.CourseMapper;
import com.example.mapper.SpecialityMapper;
import com.example.utils.CourseTimeUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 课程信息业务层处理
 */
@Service
public class CourseService {

    @Resource
    private CourseMapper courseMapper;
    @Resource
    private CollegeMapper collegeMapper;
    @Resource
    private SpecialityMapper specialityMapper;
    @Autowired
    private ChoiceMapper choiceMapper;

    public void add(Course course) {
        course.setAlreadyNum(0);
        courseMapper.insert(course);
    }

    //新增
    public List<Course> selectByCategoryId(Integer categoryId) {
        return courseMapper.selectByCategoryId(categoryId);
    }
    //原有





    public PageInfo<Course> selectPage(Course course, Integer pageNum, Integer pageSize) {
        List<Course> list;
        PageHelper.startPage(pageNum, pageSize);
        if (ObjectUtil.isNotEmpty(course.getTeacherId())) {
            Integer teacherId = course.getTeacherId();
            // 表示当前登录的是教师这个角色
            if (ObjectUtil.isNotEmpty(course.getName())) {
                list = courseMapper.selectByNameAndTeacherId(course.getName(), teacherId);
            } else {
                list = courseMapper.selectAllByTeacherId(teacherId);
            }
        } else if(ObjectUtil.isNotEmpty(course.getSpecialityId())) {
            //推荐课程,获取学院ID
            Speciality speciality=specialityMapper.selectById(course.getSpecialityId());
            list=courseMapper.selectByCollegeId(speciality.getCollegeId());

            //过滤数据
            //1.获取学生目前已选课程
            List<Course> courses=choiceMapper.selectOrderCourseByStudentId(course.getStudentId());
            //过滤数据
            list= CourseTimeUtils.filterAvailableCourses(list, courses);
        }else {
            if (ObjectUtil.isNotEmpty(course.getName())) {
                list = courseMapper.selectByName(course.getName());
            } else {
                list = courseMapper.selectAll();
            }
        }
        return PageInfo.of(list);
    }

    public void updateById(Course course) {
        courseMapper.updateById(course);
    }

    public void deleteById(Integer id) {
        courseMapper.deleteById(id);
    }

    public List<Course> selectAll() {
        return courseMapper.selectAll();
    }
}
