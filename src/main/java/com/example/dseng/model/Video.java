package com.example.dseng.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Video {

	private int id;
	private String title;
	private String description;
	private Timestamp createDate;
	
}
