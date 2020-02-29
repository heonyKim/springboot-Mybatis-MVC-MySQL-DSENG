package com.example.dseng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dseng.model.Video;
import com.example.dseng.repository.VideoRepository;

@Service
public class VideoService {

	@Autowired
	private VideoRepository vRepo;
	
	public List<Video> VideoList(){
		return vRepo.VideoList();
	}
	
	public Video videoDetail(int id) {
		return vRepo.videoDetail(id);
	}
	
	public int videoWrite(Video video) {
		return vRepo.videoWrite(video);
	}
	
	public Video videoUpdateForm(int id) {
		return vRepo.videoUpdateForm(id);
	}
	
	public int videoUpdate(Video video) {
		return vRepo.videoUpdate(video);
	}
	
	public int videoDelete(int id) {
		return vRepo.videoDelete(id);
	}
}
