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
import com.example.dseng.service.productService;
import com.google.gson.Gson;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private productService pSvc;
	
	@GetMapping("")
	public String productDefault() {
		return "/";
	}
	
	@GetMapping("/{categoryNumb}")
	public String product(@PathVariable("categoryNumb") int categoryNumb, Model model) {
		List<Product> productList = pSvc.productList(categoryNumb);
		model.addAttribute("productList", productList);
		return "product";
	}
	
	@GetMapping({"/{categoryNumb}/{id}"})
	public @ResponseBody String productDetail(
			@PathVariable("categoryNumb") int categoryNumb,
			@PathVariable("id") int id) {
		Product product = pSvc.productDetail(id, categoryNumb);
		Gson gson = new Gson();
		String detail = gson.toJson(product);
		return detail;
	}
	
	@GetMapping("/writeForm")
	public String productWriteForm(Model model) {
		List<Product> productMenu = pSvc.productMenu();
		model.addAttribute("productMenu",productMenu);
		return "writeForm";
	}
	
	@PostMapping("/write")
	public String productWrite(Product product) {
		String categoryName = pSvc.loadProductcategoryName(product.getCategoryNumb()).getCategoryName(); 
		product.setCategoryName(categoryName);
		int result = pSvc.productWrite(product);
		if(result==1) {
			return "redirect:/product/"+product.getCategoryNumb();
		}else {
			return "fail";
		}
	}
	
	@PostMapping("/updateForm")
	public String productUpdateForm(Product product,Model model) {
		List<Product> productMenu = pSvc.productMenu();
		model.addAttribute("productMenu",productMenu);
		
		Product productDetail = pSvc.productUpdateForm(product.getId());
		model.addAttribute("product", productDetail);
		
		return "updateForm";
	}
	
	@PostMapping("/update")
	public String productUpdate(Product product) {
		String categoryName = pSvc.loadProductcategoryName(product.getCategoryNumb()).getCategoryName(); 
		product.setCategoryName(categoryName);
		int result = pSvc.productUpdate(product);
		if(result==1) {
			return "redirect:/product/"+product.getCategoryNumb();
		}else {
			return "fail";
		}
	}
	
	@PostMapping("/delete")
	public String productDelete(int id) {
		int result = pSvc.productDelete(id);
		if(result==1) {
			return "redirect:/product/1";
		}else {
			return "fail";
		}
	}
	
}
