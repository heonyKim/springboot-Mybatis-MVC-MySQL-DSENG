package com.example.dseng.repository;

import java.util.List;

import com.example.dseng.model.Admin;
import com.example.dseng.model.Product;
import com.example.dseng.model.Result;

public interface MainRepository {
	Result totalResult();
	List<Product> mainProductList();
	int adminJoin(Admin admin);
	Admin adminLogin(Admin admin);
}