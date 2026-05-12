package com.javaa;

public class CourseTopics {
private int courseId;
private String topicTitle;
public CourseTopics(int courseId, String topicTitle) {
	this.courseId=courseId;
	this.topicTitle=topicTitle;
}
public CourseTopics() {}
public int getCourseId() {
	return courseId;
}
public void setCourseId(int courseId) {
    this.courseId = courseId;
}

public String getTopicTitle() {
    return topicTitle;
}

public void setTopicTitle(String topicTitle) {
    this.topicTitle = topicTitle;
}
}
	

	 
	   
	   