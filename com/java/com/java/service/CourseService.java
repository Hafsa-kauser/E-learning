package com.java.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dao.UserDAO;
import com.javaa.Course;
@Service
public class CourseService {

    @Autowired
    private UserDAO userDAO;

    // GET ALL PRODUCTS
    public List<Course> getAllCourses() {
        return userDAO.getAllCourses();
    }

    
}