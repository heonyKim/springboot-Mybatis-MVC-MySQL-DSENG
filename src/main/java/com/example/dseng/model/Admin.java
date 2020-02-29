package com.example.dseng.model;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Admin {

	private int id;
	private String username;
	private String password;
	private Timestamp createDate;
}
