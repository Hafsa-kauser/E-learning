package com.java.controller;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.service.CourseService;
import com.javaa.Course;
import com.javaa.CourseTopics;

@Controller
public class UserController {

    @Autowired
    private CourseService courseService;

    private final int userId = 1; 

    @GetMapping("/")
    public String home(Model model) {

        model.addAttribute("courses", courseService.getAllCourses());
        return "index";
    }

    @GetMapping("/courses")
    public String coursePage(Model model) {

        List<Course> courses = courseService.getAllCourses();

       
        Set<Integer> enrolledIds =
                new HashSet<>(courseService.getEnrolledCourseIds(userId));

        model.addAttribute("courses", courses);
        model.addAttribute("enrolledIds", enrolledIds);

        return "courses";
    }

    @GetMapping("/mycourses")
    public String mycoursesPage(Model model) {

        List<Course> myCourses = courseService.getMyCourses(userId);

        Map<Integer, List<CourseTopics>> topicsMap = new HashMap<>();

        for (Course c : myCourses) {
            topicsMap.put(
                c.getId(),
                courseService.getCourseTopics(c.getId())
            );
        }

        model.addAttribute("myCourses", myCourses);
        model.addAttribute("topicsMap", topicsMap);

        return "mycourses";
    }

    @PostMapping("/enroll")
    public String enrollCourse(@RequestParam("courseId") int courseId) {

        courseService.enrollCourse(userId, courseId);

        return "redirect:/courses?enrolled=true";
    }
}