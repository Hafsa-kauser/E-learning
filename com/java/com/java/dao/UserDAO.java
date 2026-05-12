package com.java.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.javaa.Course;
import com.javaa.CourseTopics;

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

            return c;
        });
    }

   
    public int enrollCourse(int userId, int courseId) {

        String sql =
                "INSERT INTO enrollments (user_id, course_id, progress) VALUES (?, ?, 0)";

        return jdbcTemplate.update(sql, userId, courseId);
    }

    public List<Course> getMyCourses(int userId) {

        String sql =
                "SELECT c.* FROM courses c " +
                "JOIN enrollments e ON c.id = e.course_id " +
                "WHERE e.user_id = ?";

        return jdbcTemplate.query(sql, (rs, rowNum) -> {

            Course c = new Course();

            c.setId(rs.getInt("id"));
            c.setTitle(rs.getString("title"));
            c.setDescription(rs.getString("description"));
            c.setDuration(rs.getFloat("duration"));
            c.setVideolink(rs.getString("video_link"));

            return c;

        }, userId);
    }
    public List<CourseTopics> getCourseTopics(int courseId) {

        String sql = "SELECT course_id,topic_title FROM course_topics WHERE course_id = ?";

        return jdbcTemplate.query(sql, (rs, rowNum) -> {
        	CourseTopics c = new CourseTopics();
        	 c.setCourseId(rs.getInt("course_id"));
        	c.setTopicTitle(rs.getString("topic_title"));
        	return c;
    },courseId);
}
    
    public List<Integer> getEnrolledCourseIds(int userId) {

        String sql = "SELECT course_id FROM enrollments WHERE user_id = ?";

        return jdbcTemplate.query(sql,
            (rs, rowNum) -> rs.getInt("course_id"),
            userId
        );
    }

}