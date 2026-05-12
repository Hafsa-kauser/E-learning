package com.java.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.UserDAO;
import com.javaa.Course;
import com.javaa.CourseTopics;

@Service
public class CourseService {

    @Autowired
    private UserDAO userDAO;

    public List<Course> getAllCourses() {
        return userDAO.getAllCourses();
    }

    public int enrollCourse(int userId, int courseId) {
        return userDAO.enrollCourse(userId, courseId);
    }

    public List<Course> getMyCourses(int userId) {
        return userDAO.getMyCourses(userId);
    }

    // FIXED METHOD NAME
    public List<CourseTopics> getCourseTopics(int courseId) {
        return userDAO.getCourseTopics(courseId);
    }

    public List<Integer> getEnrolledCourseIds(int userId) {
        return userDAO.getEnrolledCourseIds(userId);
    }
}