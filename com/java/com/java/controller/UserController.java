package com.java.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.java.service.CourseService;
import com.javaa.Course;
@Controller
public class UserController {
@Autowired
private CourseService courseService;
@GetMapping("/")
public String home(Model model) {

    List<Course> courses = courseService.getAllCourses();
    model.addAttribute("courses", courses);

    return "index"; // index.jsp
    
}

@GetMapping("/courses.jsp")

	public String coursePage(Model model) {
	    model.addAttribute("courses", courseService.getAllCourses());
	return "courses.jsp";
}
@GetMapping("/mycourses")
public String mycoursesPage() {
	return "mycourses";
}







}