package com.sarayamvc.model;

import java.util.Date;

public class Podcast {
	private int id;
	private String user;
	private String author;
	private String title;
	private Date targetDate;
	private String description;
	private String picture;
	
	public Podcast() {
		super();
	}

	

	public String getPicture() {
		return picture;
	}



	public void setPicture(String picture) {
		this.picture = picture;
	}



	public Podcast(int id, String user, String author, String title, Date targetDate, String description,
			String picture) {
		super();
		this.id = id;
		this.user = user;
		this.author = author;
		this.title = title;
		this.targetDate = targetDate;
		this.description = description;
		this.picture = picture;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(Date targetDate) {
		this.targetDate = targetDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Podcast other = (Podcast) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Podcast [id=" + id + ", user=" + user + ", author=" + author + ", title=" + title + ", targetDate="
				+ targetDate + ", description=" + description + ", picture=" + picture + "]";
	}
	
	
	
}
