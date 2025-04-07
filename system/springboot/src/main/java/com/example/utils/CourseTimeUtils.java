package com.example.utils;


import com.example.entity.Course;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

public class CourseTimeUtils {

    // 正则表达式匹配 "周X A-B节" 格式
    private static final Pattern TIME_PATTERN = Pattern.compile("周([一二三四五六日]) (\\d+)-(\\d+)节");

    /**
     * 检查两个课程时间是否有冲突
     */
    public static boolean hasTimeConflict(String time1, String time2) {
        if (time1 == null || time2 == null) {
            return false;
        }

        // 分割多个时间段，例如 "周一 1-2节 周三 3-4节" -> ["周一 1-2节", "周三 3-4节"]
        String[] periods1 = time1.split("(?<=节)\\s+");
        String[] periods2 = time2.split("(?<=节)\\s+");

        // 检查所有时间段组合
        for (String p1 : periods1) {
            for (String p2 : periods2) {
                if (isPeriodConflict(p1, p2)) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * 检查两个单独的时间段是否有冲突
     */
    private static boolean isPeriodConflict(String period1, String period2) {
        Matcher m1 = TIME_PATTERN.matcher(period1);
        Matcher m2 = TIME_PATTERN.matcher(period2);

        if (m1.find() && m2.find()) {
            // 检查星期是否相同
            if (!m1.group(1).equals(m2.group(1))) {
                return false;
            }

            // 解析节次范围
            int start1 = Integer.parseInt(m1.group(2));
            int end1 = Integer.parseInt(m1.group(3));
            int start2 = Integer.parseInt(m2.group(2));
            int end2 = Integer.parseInt(m2.group(3));

            // 检查节次范围是否有重叠
            return !(end1 < start2 || end2 < start1);
        }
        return false;
    }

    /**
     * 过滤掉与已选课程时间冲突的课程
     */
    public static List<Course> filterConflictingCourses(List<Course> allCourses, List<Course> selectedCourses) {
        return allCourses.stream()
                .filter(course -> selectedCourses.stream()
                        .noneMatch(selected -> hasTimeConflict(course.getTime(), selected.getTime())))
                .toList();
    }


    /**
     * 检查学生是否已完成所有先修课程
     * @param course 待检查的课程
     * @param selectedCourseIds 学生已选课程的ID集合
     * @return true表示已完成所有先修课程
     */
    public static boolean hasCompletedPrerequisites(Course course, Set<Integer> selectedCourseIds) {
        if (course.getPreCourseIds() == null || course.getPreCourseIds().isEmpty()) {
            return true; // 没有先修课程要求
        }

        // 分割先修课程ID字符串，如"1,2,3" -> [1,2,3]
        Set<Integer> requiredCourseIds = Arrays.stream(course.getPreCourseIds().split(","))
                .map(String::trim)
                .filter(s -> !s.isEmpty())
                .map(Integer::parseInt)
                .collect(Collectors.toSet());

        // 检查已选课程是否包含所有先修课程
        return selectedCourseIds.containsAll(requiredCourseIds);
    }

    /**
     * 综合过滤方法：时间不冲突且满足先修课程要求
     */
    public static List<Course> filterAvailableCourses(List<Course> allCourses,
                                                      List<Course> selectedCourses) {
        // 获取学生已选课程的ID集合
        Set<Integer> selectedCourseIds = selectedCourses.stream()
                .map(Course::getId)
                .collect(Collectors.toSet());

        return allCourses.stream()
                // 过滤时间冲突
                .filter(course -> selectedCourses.stream()
                        .noneMatch(selected -> hasTimeConflict(course.getTime(), selected.getTime())))
                // 过滤先修课程
                .filter(course -> hasCompletedPrerequisites(course, selectedCourseIds))
                .toList();
    }
}
