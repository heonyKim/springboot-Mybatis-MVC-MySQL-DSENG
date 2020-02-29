package com.example.dseng.repository;

import java.util.List;

import com.example.dseng.model.Video;

public interface VideoRepository {
	List<Video> VideoList();
	Video videoDetail(int id);
	int videoWrite(Video video);
	Video videoUpdateForm(int id);
	int videoUpdate(Video video);
	int videoDelete(int id);
}
