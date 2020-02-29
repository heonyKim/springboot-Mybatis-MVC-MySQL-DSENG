package com.example.dseng.repository;

import java.util.List;

import com.example.dseng.model.Product;

public interface ProductRepository {
	List<Product> productMenu();
	List<Product> productList(int categoryNumb);
	Product produdctDetail(int id, int categoryNumb);
	Product loadProductCategoryName(int categoryNumb);
	int productWrite(Product product);
	Product productUpdateForm(int id);
	int productUpdate(Product product);
	int productDelete(int id);
}