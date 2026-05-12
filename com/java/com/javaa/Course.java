package com.javaa;

public class Course {
	private int id;
	private String title;
	private String description;
	private Float duration;
	private String videolink ;
	public Course(int id, String title,String description,Float duration,String videolink) {
		this.id=id;
		this.title=title;
		this.description=description;
		this.duration=duration;
		this.videolink=videolink;
	}
	public Course() {}
	

	 
	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }
	    
	    public String getTitle() {
	        return title;
	    }

	    public void setTitle(String title) {
	        this.title = title;
	    }

	    public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }

	    public double getDuration() {
	        return duration;
	    }

	    public void setDuration( Float duration) {
	        this.duration = duration;
	    }

	    public String getVideolink() {
	        return videolink;
	    }

	    public void setVideolink(String videolink) {
	        this.videolink= videolink;
	    }
	    }
