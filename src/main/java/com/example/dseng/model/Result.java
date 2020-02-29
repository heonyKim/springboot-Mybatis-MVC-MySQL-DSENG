package com.example.dseng.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Result {

	private int id;
	private String title;
	private Timestamp createDate;
	
	private int num;
	private int count;
	
}
