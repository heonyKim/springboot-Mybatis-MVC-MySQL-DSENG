package com.example.dseng.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dseng.model.Result;
import com.example.dseng.service.ResultService;
import com.example.dseng.service.productService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/result")
public class ResultController {
	
	@Autowired
	private ResultService rSvc;
	
	@GetMapping("")
	public String redirect() {
		return "result";
	}
	
	@RequestMapping("/list")
	public @ResponseBody String resultList() {
		List<Result> result = rSvc.resultList();
		Gson gson = new Gson();
		String resultList = gson.toJson(result);
		return resultList;
	}
	
	@RequestMapping("/write")
	public @ResponseBody String resultWrite(@RequestParam("title") String title) {
		int result = rSvc.resultWrite(title);
		if(result==1) {
			return "success";
		}else {
			return "fail";
		}
	}
	
	
	
}
