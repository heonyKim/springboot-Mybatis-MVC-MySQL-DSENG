package com.example.dseng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.dseng.model.Admin;
import com.example.dseng.model.Product;
import com.example.dseng.model.Result;
import com.example.dseng.repository.MainRepository;
import com.example.dseng.repository.ProductRepository;

@Service
public class MainService {
	
	@Autowired
	private MainRepository mRepo;
	
	public Result totalResult() {
		return mRepo.totalResult();
	}
	
	public List<Product> mainProductList(){
		return mRepo.mainProductList();
	}
	
	public int adminJoin(Admin admin) {
		return mRepo.adminJoin(admin);
	}
	
	public Admin adminLogin(Admin admin) {
		return mRepo.adminLogin(admin);
	}
	
}
