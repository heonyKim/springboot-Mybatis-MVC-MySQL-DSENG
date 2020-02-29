package com.example.dseng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.dseng.model.Product;
import com.example.dseng.repository.ProductRepository;

@Service
public class productService {
	
	@Autowired
	private ProductRepository pRepo;
	
	public List<Product> productMenu() {
		List<Product> productMenu=pRepo.productMenu();
		return productMenu;
	}
	
	public List<Product> productList(int categoryNumb){
		List<Product> productList = pRepo.productList(categoryNumb);
		return productList;
	}
	
	public Product productDetail(int id,int categoryNumb) {
		Product product = pRepo.produdctDetail(id, categoryNumb);
		return product;
	}
	
	public Product loadProductcategoryName(int categoryNumb) {
		return pRepo.loadProductCategoryName(categoryNumb);
	}
	
	public int productWrite(Product product) {
		return pRepo.productWrite(product);
	}
	
	public Product productUpdateForm(int id) {
		return pRepo.productUpdateForm(id);
	}
	
	public int productUpdate(Product product) {
		return pRepo.productUpdate(product);
	}
	
	public int productDelete(int id) {
		return pRepo.productDelete(id);
	}
	
}
