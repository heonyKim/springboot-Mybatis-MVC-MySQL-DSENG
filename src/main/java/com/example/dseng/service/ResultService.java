package com.example.dseng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dseng.model.Result;
import com.example.dseng.repository.ResultRepository;

@Service
public class ResultService {
	
	@Autowired
	private ResultRepository rRepo;
	
	
	public List<Result> resultList(){
		return rRepo.resultList();
	}
	
	public int resultWrite(String title) {
		return rRepo.resultWrite(title);
	}
	
}
