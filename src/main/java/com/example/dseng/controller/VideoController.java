package com.example.dseng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dseng.model.Product;
import com.example.dseng.model.Video;
import com.example.dseng.service.VideoService;
import com.example.dseng.service.productService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/video")
public class VideoController {
	
	@Autowired
	private VideoService vSvc;
	
	@GetMapping("")
	public String video(Model model) {
		List<Video> videoList = vSvc.VideoList();
		model.addAttribute("videoList", videoList);
		return "video";
	}
	
	@GetMapping("/{id}")
	public @ResponseBody String videoDetail(@PathVariable("id") int id) {
		Video video = vSvc.videoDetail(id);
		Gson gson = new Gson();
		String detail = gson.toJson(video);
		return detail;
	}
	
	@GetMapping("/videoWriteForm")
	public String videoWriteForm(Model model) {
		return "videoWriteForm";
	}
	
	@PostMapping("/write")
	public String videoWrite(Video video) {
		int result = vSvc.videoWrite(video);
		if(result==1) {
			return "redirect:/video";
		}else {
			return "fail";
		}
	}
	
	@PostMapping("/videoUpdateForm")
	public String videoUpdate(int id, Model model) {
		Video video = vSvc.videoUpdateForm(id);
		model.addAttribute("video", video);
		return "videoUpdateForm";
	}
	
	@PostMapping("/update")
	public String videotUpdate(Video video) {
		int result = vSvc.videoUpdate(video);
		if(result==1) {
			return "redirect:/video";
		}else {
			return "fail";
		}
	}
	
	@PostMapping("/delete")
	public String videoDelete(int id) {
		int result = vSvc.videoDelete(id);
		if(result==1) {
			return "redirect:/video";
		}else {
			return "fail";
		}
	}
	
	
	
}
