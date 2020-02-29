package com.example.dseng.repository;

import java.util.List;

import com.example.dseng.model.Result;

public interface ResultRepository {
	List<Result> resultList();
	int resultWrite(String title);
}
