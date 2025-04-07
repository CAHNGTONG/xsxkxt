package com.example.controller;

import com.example.common.Result;
import com.example.entity.Course;
import com.example.entity.CourseDTO;
import com.example.service.CourseService;
import com.github.pagehelper.PageInfo;
import jakarta.annotation.Resource;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

/**
 * 课程信息前端请求的接口入口
 */
@RestController
@RequestMapping("/course")
public class CourseController {

    @Resource
    private CourseService courseService;



    //新增
    @GetMapping("/selectByCategoryId")
    public Result selectByCategoryId(@RequestParam Integer categoryId) {
        List<Course> list = courseService.selectByCategoryId(categoryId);
        return Result.success(list);
    }
    //原有













    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody Course course) {
        courseService.add(course);
        return Result.success();
    }

    /**
     * 更新
     */
    @PutMapping("/update")
    public Result update(@RequestBody CourseDTO dto) {
        Course course=new Course();
        BeanUtils.copyProperties(dto,course);
        String result = dto.getPrerequisiteIds().stream()
                .map(String::valueOf)
                .collect(Collectors.joining(","));
        course.setPreCourseIds(result);
        courseService.updateById(course);
        return Result.success();
    }

    /**
     * 根据id删除
     */
    @DeleteMapping("/deleteById/{id}")
    public Result deleteById(@PathVariable Integer id) {
        courseService.deleteById(id);
        return Result.success();
    }


    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(Course course,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "5") Integer pageSize) {
        PageInfo<Course> pageInfo = courseService.selectPage(course, pageNum, pageSize);
        return Result.success(pageInfo);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll() {
        List<Course> list = courseService.selectAll();
        return Result.success(list);
    }
}
