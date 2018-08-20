package com.ck.service;

import java.util.List;

import com.ck.entity.Setquestions;

public interface SetquestionsService {

	public List<Setquestions> findAllSetquestions();
	
	public void saveSetquestions(Setquestions setquestions);
	
	public void daleteSetquestions(Setquestions setquestions);
	
	public void updateSetquestions(Setquestions setquestions);
}
