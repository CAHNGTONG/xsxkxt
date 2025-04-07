package com.example.entity;

import java.util.List;

/**
 * @author yzy
 * @desc
 * @since 2025/4/7
 */
public class CourseDTO extends Course{
    private List<Integer> prerequisiteIds;

    public List<Integer> getPrerequisiteIds() {
        return prerequisiteIds;
    }

    public void setPrerequisiteIds(List<Integer> prerequisiteIds) {
        this.prerequisiteIds = prerequisiteIds;
    }
}
