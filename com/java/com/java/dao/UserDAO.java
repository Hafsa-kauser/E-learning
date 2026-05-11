package com.java.dao;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.javaa.Course;
@Repository
public class UserDAO {
@Autowired
private JdbcTemplate jdbcTemplate;
public List<Course> getAllCourses() {

    String sql = "SELECT * FROM courses";
    		 return jdbcTemplate.query(sql, (rs, rowNum) -> {
    			 Course c = new Course();
    			 c.setId(rs.getInt("id"));
    			 c.setTitle(rs.getString("title"));
    			 c.setDescription(rs.getString("description"));
    	            c.setDuration(rs.getFloat("duration"));
    	            c.setVideolink(rs.getString("video_link"));
return c;});
    		 }
}








    