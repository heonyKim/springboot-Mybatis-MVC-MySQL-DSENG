package com.example.dseng.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Product {

	private int id;
	private String productName;
	private String description;
	private int categoryNumb;
	private String categoryName;
	private Timestamp createDate;
	
//	DB와 무관
	private int categoryCount;
	private String imgUrl;
}
