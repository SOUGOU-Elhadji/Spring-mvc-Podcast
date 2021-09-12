package com.sarayamvc.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sarayamvc.model.Podcast;
import com.sarayamvc.service.PodcastService;

@Controller
@SessionAttributes("username")
public class PodcastController {
	@Autowired
	PodcastService podcastService;
	@Autowired
	WelcomeController welcomeController;

	
	@RequestMapping(value = "/list-podcast", method=RequestMethod.GET)
	public String getAll(ModelMap model) {
		String username = (String) model.getAttribute("username");
		model.addAttribute("podcasts", podcastService.getAll(username));
		return "listPage";
	}
	
	@RequestMapping(value = "/add-podcast", method=RequestMethod.GET)
	public String addPodcast(ModelMap model) {
		model.addAttribute("podcasts", new Podcast());
		return "formPage";
	}
	
	@RequestMapping(value = "/add-podcast", method=RequestMethod.POST)
	public String add(@RequestParam String user, String author, String title, String description, Date targetDate, String picture) {
		podcastService.addPodcast("Seck", author, title, description, targetDate, picture);
		return "redirect:/list-podcast";
	}
	
	@RequestMapping(value = "/delete-podcast", method=RequestMethod.GET)
	public String deletePodcast(@RequestParam int id, ModelMap model) {
		podcastService.deletePodcast(id);
		model.clear();
		return "redirect:/list-podcast";
	}
	
	@RequestMapping(value = "/podcast-update", method=RequestMethod.GET)
	public String updatePodcast(@RequestParam Integer id, ModelMap model) {
		model.addAttribute("podcast", podcastService.findById(id));
		return "editPage";
	}
	
	@RequestMapping(value = "/podcast-update", method=RequestMethod.POST)
	public String updatePodcast(@Validated Podcast podcast, ModelMap model, BindingResult result) {
		if (result.hasErrors())
			return "listPage";
			//todo.setUser();
			podcast.setUser(welcomeController.getLoggedInUser());
			podcastService.updatePodcast(podcast);
			model.clear();
			return "redirect:list-podcast";
	}
}
