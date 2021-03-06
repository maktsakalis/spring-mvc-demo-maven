package com.springpractice.springmvcdemomaven;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm() {
		return "helloworld-form";
	}

	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}

	@RequestMapping("/processFormTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {

		String theName = request.getParameter("studentName");
		theName = theName.toUpperCase();

		model.addAttribute("message", "Yo! " + theName);

		return "helloworld";
	}

	@RequestMapping("/processFormThree")
	public String letsShoutDudeVersionThree(@RequestParam("studentName") String theName, Model model) {

		theName = theName.toUpperCase();

		model.addAttribute("message", "My man " + theName);

		return "helloworld";
	}
}
