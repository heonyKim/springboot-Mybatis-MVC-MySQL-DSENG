package com.example.dseng.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.dseng.model.Admin;
import com.example.dseng.model.Product;
import com.example.dseng.model.Result;
import com.example.dseng.service.MainService;
import com.example.dseng.service.productService;
import com.google.gson.Gson;

@Controller
public class MainController {
	
	@Autowired
	private productService pSvc;
	
	@Autowired
	private MainService mSvc;
	
	
	@GetMapping("")
	public String redirect() {
		return "redirect:/";
	}
	
	@GetMapping("/")
	public String main(Model model) {
		List<Product> mainProductList = mSvc.mainProductList();
		for (Product product : mainProductList) {
			String html = product.getDescription();
			Document doc = Jsoup.parse(html);
			Element e = doc.select("img[src]").first();
			if(e==null) {
				
			}else {
				String imgUrl = doc.select("img[src]").first().attr("src");
				product.setImgUrl(imgUrl);
			}
		}
		
		model.addAttribute("mainProductList",mainProductList);
		return "index";
	}
	
	@RequestMapping("/totalResult")
	public @ResponseBody int totalResult() {
		Result result = mSvc.totalResult();
		int totalResult = result.getCount();
		return totalResult;
	}
	
	
	@RequestMapping("/productMenu")
	public @ResponseBody String productMenu() {
		List<Product> productMenu = pSvc.productMenu();
		Gson gson = new Gson();
		String listToJson = gson.toJson(productMenu);
		return listToJson;
	}
	
	@GetMapping("/admin/joinForm")
	public String adminJoinForm() {
		return "/joinForm";
	}
	
	@PostMapping("/admin/join")
	public String adminJoin(Admin admin) {
		String rawPassword = admin.getPassword();
		String password = BCrypt.hashpw(rawPassword, BCrypt.gensalt());
		admin.setPassword(password);
		int result = mSvc.adminJoin(admin);
		if(result==1) {
			return "redirect:/";
		}else {
			return "fail";
		}
	}	
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
	
	@PostMapping("/login")
	public String adminLogin(Admin admin,
			HttpServletRequest request) {
		try {
			Admin loadAdmin = mSvc.adminLogin(admin);
			boolean isValidPassword = BCrypt.checkpw(admin.getPassword(), loadAdmin.getPassword());
			if(isValidPassword) {
				HttpSession session = request.getSession();
				session.setAttribute("admin", loadAdmin);
				return "index";
			}else {
				return "loginForm";
			}
		} catch (NullPointerException e) {
			return "loginForm";
		}
		
	}
	
	@GetMapping("/logout")
	public String adminLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}
	
}
