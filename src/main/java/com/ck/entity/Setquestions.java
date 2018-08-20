package com.ck.entity;

import javax.persistence.Column;
import javax.persistence.Table;
import javax.persistence.Id;

@Table(name="CK_Questions")
public class Setquestions {
	  @Id
	  private int Id;//套题ID
	  @Column(name="QuestionsName")
	  private String QuestionsName;//套题名字
	  
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getQuestionsName() {
		return QuestionsName;
	}
	public void setQuestionsName(String questionsName) {
		QuestionsName = questionsName;
	} 
}
