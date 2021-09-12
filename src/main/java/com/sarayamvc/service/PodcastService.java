package com.sarayamvc.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.sarayamvc.model.Podcast;

@Service
public class PodcastService {
	public static List<Podcast> podcasts =  new ArrayList<Podcast>();
	public static int count = 4;
	static {
		podcasts.add(new Podcast(1, "Momo", "Elzo", "Repression", new Date(), "Life is hard and its time to change our mind", "https://devenirbilingue.com/wp-content/uploads/2020/02/podcast-apprendre-francais-300x300.jpg"));
		podcasts.add(new Podcast(2, "Seck", "Souleye", "Racisme", new Date(), "Life is hard and its time to change our mind", "https://devenirbilingue.com/wp-content/uploads/2020/02/podcast-apprendre-francais-300x300.jpg"));
		podcasts.add(new Podcast(3, "Ousmane", "Satou", "War", new Date(), "Life is hard and its time to change our mind", "https://devenirbilingue.com/wp-content/uploads/2020/02/podcast-apprendre-francais-300x300.jpg"));
		podcasts.add(new Podcast(4, "Dame", "Adja", "Life", new Date(), "Life is hard and its time to change our mind", "https://devenirbilingue.com/wp-content/uploads/2020/02/podcast-apprendre-francais-300x300.jpg"));
		
	}
	
	public List<Podcast> getAll(String user) {
		List<Podcast> listpodcast = new ArrayList<Podcast>();
		for (Podcast podcast : podcasts) {
			if (podcast.getUser().equalsIgnoreCase(user)) {
				listpodcast.add(podcast);
			}
		}
		return podcasts;
	}
	
	public void addPodcast(String user, String author, String title, String description, Date targetDate, String picture) {
		// TODO Auto-generated method stub
		podcasts.add(new Podcast());
	}
	
	public Podcast findById(int id) {
		for (Podcast podcast : podcasts) {
			if (podcast.getId() == id) {
				return podcast;
			}
		}
		return null;
	}
	
	public void updatePodcast(Podcast podcast) {
		podcasts.remove(podcast);
		podcasts.add(podcast);
	}
	
	public void deletePodcast(int id) {
		// TODO Auto-generated method stub
		Iterator<Podcast> iterator = podcasts.iterator();
		while (iterator.hasNext()) {
			Podcast podcast = iterator.next();
			if (podcast.getId() == id) {
				iterator.remove();
			}
			
		}
	}
}
