package org.khmeracademy.app.entities;

public class YoutubeVideo {
	
	private int id;
	private String title;
	private String description;
	private String videoId;
	private String duration;
	private String index;
	
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
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getVideoId() {
		return videoId;
	}
	public void setVideoId(String videoId) {
		this.videoId = videoId;
	}
	
	public void setIndex(String index) {
		this.index = index;
	}
	public String getIndex() {
		return index;
	}

}
